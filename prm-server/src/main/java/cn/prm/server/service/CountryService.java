package cn.prm.server.service;

import java.sql.Timestamp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.prm.server.bean.CurrUser;
import cn.prm.server.commons.Constants;
import cn.prm.server.commons.UUIDUtil;
import cn.prm.server.dao.ICountryDao;
import cn.prm.server.entity.Country;
import cn.prm.server.exception.BusinessException;
import cn.prm.server.form.CountryForm;

@Service(value = "countryService")
public class CountryService {
	
	private static final Logger log = LoggerFactory.getLogger(CountryService.class);
	
	@Autowired
	ICountryDao countryDao;
	
	public void createCountry(CurrUser currUser, CountryForm form) throws BusinessException{
		String stdName = form.getStdName();
		String enName = form.getEnName();
		String cnName = form.getCnName();
		int code = form.getCode();
		
		if(stdName==null || "".equals(stdName)){
			throw new BusinessException("国家缩写不能为空");
		}
		if(enName==null || "".equals(enName)){
			throw new BusinessException("国家英文名不能为空");
		}
		if(cnName==null || "".equals(cnName)){
			throw new BusinessException("国家中文名不能为空");
		}
//		if(code == 0){
//			throw new BusinessException("请正确输入国家代码");
//		}
		Timestamp now = new Timestamp(System.currentTimeMillis());
		Country country = new Country();
		country.setGuid(UUIDUtil.randomUUID());
		country.setStdName(stdName);
		country.setStdCode(code);
		country.setStatus(Constants.DB_STATUS.STATUS_ACTIVE);
		country.setCreateTime(now);
		country.setModifyTime(now);
		country.setCreateUser(currUser.getGuid());
		country.setModifyUser(currUser.getGuid());
		country.setEnName(enName);
		country.setCnName(cnName);
		countryDao.add(country);
	}
}