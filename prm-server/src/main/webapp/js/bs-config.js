/**
 * 表格配置
 */
function TableConfig(url, toolbar, columns) {
    this.url = url;
    this.columns = columns;
    this.dataType = 'json'; // 数据格式
    this.toolbar = toolbar; // 工具栏
    this.cache = false; // 缓存
    this.sortable = false; // 是否启用排序
    this.pagination = true; // 分页
    this.pageList = [ 10, 20, 50, 100 ];
    this.singleSelect = false; // 非单选
    this.search = true; // 搜索框
    this.showRefresh = true; // 刷新按钮
    this.sidePagination = 'server'; // 服务端分页
    this.showColumns = true; // 开启选择显示列
    this.smartDisplay = true; // 智能显示
    this.showToggle = true;
    this.undefinedText = '';
    this.pageSize = 20;
    this.clickToSelect = true; // 单击行选中
    this.showExport = true;
    this.exportDataType = 'all';
    this.rowStyle = function(row, index) { // 隔行换色
        var strclass = '';
        if (row.state) {
            strclass = 'info';
        } else {
            strclass = '';
        }
        return {
            classes : strclass // 不变色
        };
    };

    this.responseHandler = function(res) { // 返回处理
        if (res.code == 100) {
            return {
                'page' : res.page,
                'total' : res.total,
                'rows' : res.rows
            };
        } else {
            toastr.warning(res.code + ':' + res.msg);
            return {
                'page' : 0,
                'total' : 0,
                'rows' : []
            };
        }
    };
}

// 吐司配置
toastr.options = {
    "closeButton" : false,
    "debug" : false,
    "progressBar" : true,
//    "positionClass" : "toast-bottom-full-width",
    "onclick" : null,
    "showDuration" : "300",
    "hideDuration" : "1000",
    "timeOut" : "5000",
    "extendedTimeOut" : "100",
    "showEasing" : "swing",
    "hideEasing" : "linear",
    "showMethod" : "fadeIn",
    "hideMethod" : "fadeOut"
};

/**
 * 表单数据快速填充
 * @param obj 数据
 */
function loadData(obj){
    var key,value,tagName,type,arr;
    for(x in obj){
        key = x;
        value = obj[x];
        
        $("[name='"+key+"'],[name='"+key+"[]']").each(function(){
            tagName = $(this)[0].tagName;
            type = $(this).attr('type');
            if(tagName=='INPUT'){
                if(type=='radio'){
                    $(this).attr('checked',$(this).val()==value);
                }else if(type=='checkbox'){
                    arr = value.split(',');
                    for(var i =0;i<arr.length;i++){
                        if($(this).val()==arr[i]){
                            $(this).attr('checked',true);
                            break;
                        }
                    }
                }else{
                    $(this).val(value);
                }
            }else if(tagName=='SELECT' || tagName=='TEXTAREA'){
                $(this).val(value);
            }
            
        });
    }
}
