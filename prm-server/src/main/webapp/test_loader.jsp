<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/js/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">

/*
 *  Usage:
 *
 *    <div class="sk-spinner sk-spinner-rotating-plane"></div>
 *
 */

.sk-spinner-rotating-plane.sk-spinner {
    width: 30px;
    height: 30px;
    background-color: #23b7e5;
    margin: 0 auto;
    -webkit-animation: sk-rotatePlane 1.2s infinite ease-in-out;
    animation: sk-rotatePlane 1.2s infinite ease-in-out;
}

@-webkit-keyframes sk-rotatePlane {
    0% {
        -webkit-transform: perspective(120px) rotateX(0deg) rotateY(0deg);
        transform: perspective(120px) rotateX(0deg) rotateY(0deg);
    }
    50% {
        -webkit-transform: perspective(120px) rotateX(-180.1deg) rotateY(0deg);
        transform: perspective(120px) rotateX(-180.1deg) rotateY(0deg);
    }
    100% {
        -webkit-transform: perspective(120px) rotateX(-180deg) rotateY(-179.9deg);
        transform: perspective(120px) rotateX(-180deg) rotateY(-179.9deg);
    }
}

@keyframes sk-rotatePlane {
    0% {
        -webkit-transform: perspective(120px) rotateX(0deg) rotateY(0deg);
        transform: perspective(120px) rotateX(0deg) rotateY(0deg);
    }
    50% {
        -webkit-transform: perspective(120px) rotateX(-180.1deg) rotateY(0deg);
        transform: perspective(120px) rotateX(-180.1deg) rotateY(0deg);
    }
    100% {
        -webkit-transform: perspective(120px) rotateX(-180deg) rotateY(-179.9deg);
        transform: perspective(120px) rotateX(-180deg) rotateY(-179.9deg);
    }
}


/*
 *  Usage:
 *
 *    <div class="sk-spinner sk-spinner-double-bounce">
 *      <div class="sk-double-bounce1"></div>
 *      <div class="sk-double-bounce2"></div>
 *    </div>
 *
 */

.sk-spinner-double-bounce.sk-spinner {
    width: 40px;
    height: 40px;
    position: relative;
    margin: 0 auto;
}

.sk-spinner-double-bounce .sk-double-bounce1,
.sk-spinner-double-bounce .sk-double-bounce2 {
    width: 100%;
    height: 100%;
    border-radius: 50%;
    background-color: #23b7e5;
    opacity: 0.6;
    position: absolute;
    top: 0;
    left: 0;
    -webkit-animation: sk-doubleBounce 2s infinite ease-in-out;
    animation: sk-doubleBounce 2s infinite ease-in-out;
}

.sk-spinner-double-bounce .sk-double-bounce2 {
    -webkit-animation-delay: -1s;
    animation-delay: -1s;
}

@-webkit-keyframes sk-doubleBounce {
    0%,
    100% {
        -webkit-transform: scale(0);
        transform: scale(0);
    }
    50% {
        -webkit-transform: scale(1);
        transform: scale(1);
    }
}

@keyframes sk-doubleBounce {
    0%,
    100% {
        -webkit-transform: scale(0);
        transform: scale(0);
    }
    50% {
        -webkit-transform: scale(1);
        transform: scale(1);
    }
}


/*
 *  Usage:
 *
 *    <div class="sk-spinner sk-spinner-wave">
 *      <div class="sk-rect1"></div>
 *      <div class="sk-rect2"></div>
 *      <div class="sk-rect3"></div>
 *      <div class="sk-rect4"></div>
 *      <div class="sk-rect5"></div>
 *    </div>
 *
 */

.sk-spinner-wave.sk-spinner {
    margin: 0 auto;
    width: 100px;
    height: 60px;
    text-align: center;
    font-size: 10px;
}

.sk-spinner-wave div {
    background-color: #23b7e5;
    height: 100%;
    width: 6px;
    display: inline-block;
    -webkit-animation: sk-waveStretchDelay 1.2s infinite ease-in-out;
    animation: sk-waveStretchDelay 1.2s infinite ease-in-out;
}

.sk-spinner-wave .sk-rect2 {
    -webkit-animation-delay: -1.1s;
    animation-delay: -1.1s;
}

.sk-spinner-wave .sk-rect3 {
    -webkit-animation-delay: -1s;
    animation-delay: -1s;
}

.sk-spinner-wave .sk-rect4 {
    -webkit-animation-delay: -0.9s;
    animation-delay: -0.9s;
}

.sk-spinner-wave .sk-rect5 {
    -webkit-animation-delay: -0.8s;
    animation-delay: -0.8s;
}

@-webkit-keyframes sk-waveStretchDelay {
    0%,
    40%,
    100% {
        -webkit-transform: scaleY(0.4);
        transform: scaleY(0.4);
    }
    20% {
        -webkit-transform: scaleY(1);
        transform: scaleY(1);
    }
}

@keyframes sk-waveStretchDelay {
    0%,
    40%,
    100% {
        -webkit-transform: scaleY(0.4);
        transform: scaleY(0.4);
    }
    20% {
        -webkit-transform: scaleY(1);
        transform: scaleY(1);
    }
}


/*
 *  Usage:
 *
 *    <div class="sk-spinner sk-spinner-wandering-cubes">
 *      <div class="sk-cube1"></div>
 *      <div class="sk-cube2"></div>
 *    </div>
 *
 */

.sk-spinner-wandering-cubes.sk-spinner {
    margin: 0 auto;
    width: 32px;
    height: 32px;
    position: relative;
}

.sk-spinner-wandering-cubes .sk-cube1,
.sk-spinner-wandering-cubes .sk-cube2 {
    background-color: #23b7e5;
    width: 10px;
    height: 10px;
    position: absolute;
    top: 0;
    left: 0;
    -webkit-animation: sk-wanderingCubeMove 1.8s infinite ease-in-out;
    animation: sk-wanderingCubeMove 1.8s infinite ease-in-out;
}

.sk-spinner-wandering-cubes .sk-cube2 {
    -webkit-animation-delay: -0.9s;
    animation-delay: -0.9s;
}

@-webkit-keyframes sk-wanderingCubeMove {
    25% {
        -webkit-transform: translateX(42px) rotate(-90deg) scale(0.5);
        transform: translateX(42px) rotate(-90deg) scale(0.5);
    }
    50% {
        /* Hack to make FF rotate in the right direction */
        -webkit-transform: translateX(42px) translateY(42px) rotate(-179deg);
        transform: translateX(42px) translateY(42px) rotate(-179deg);
    }
    50.1% {
        -webkit-transform: translateX(42px) translateY(42px) rotate(-180deg);
        transform: translateX(42px) translateY(42px) rotate(-180deg);
    }
    75% {
        -webkit-transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
        transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
    }
    100% {
        -webkit-transform: rotate(-360deg);
        transform: rotate(-360deg);
    }
}

@keyframes sk-wanderingCubeMove {
    25% {
        -webkit-transform: translateX(42px) rotate(-90deg) scale(0.5);
        transform: translateX(42px) rotate(-90deg) scale(0.5);
    }
    50% {
        /* Hack to make FF rotate in the right direction */
        -webkit-transform: translateX(42px) translateY(42px) rotate(-179deg);
        transform: translateX(42px) translateY(42px) rotate(-179deg);
    }
    50.1% {
        -webkit-transform: translateX(42px) translateY(42px) rotate(-180deg);
        transform: translateX(42px) translateY(42px) rotate(-180deg);
    }
    75% {
        -webkit-transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
        transform: translateX(0px) translateY(42px) rotate(-270deg) scale(0.5);
    }
    100% {
        -webkit-transform: rotate(-360deg);
        transform: rotate(-360deg);
    }
}


/*
 *  Usage:
 *
 *    <div class="sk-spinner sk-spinner-pulse"></div>
 *
 */

.sk-spinner-pulse.sk-spinner {
    width: 40px;
    height: 40px;
    margin: 0 auto;
    background-color: #23b7e5;
    border-radius: 100%;
    -webkit-animation: sk-pulseScaleOut 1s infinite ease-in-out;
    animation: sk-pulseScaleOut 1s infinite ease-in-out;
}

@-webkit-keyframes sk-pulseScaleOut {
    0% {
        -webkit-transform: scale(0);
        transform: scale(0);
    }
    100% {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 0;
    }
}

@keyframes sk-pulseScaleOut {
    0% {
        -webkit-transform: scale(0);
        transform: scale(0);
    }
    100% {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 0;
    }
}


/*
 *  Usage:
 *
 *    <div class="sk-spinner sk-spinner-chasing-dots">
 *      <div class="sk-dot1"></div>
 *      <div class="sk-dot2"></div>
 *    </div>
 *
 */

.sk-spinner-chasing-dots.sk-spinner {
    margin: 0 auto;
    width: 40px;
    height: 40px;
    position: relative;
    text-align: center;
    -webkit-animation: sk-chasingDotsRotate 2s infinite linear;
    animation: sk-chasingDotsRotate 2s infinite linear;
}

.sk-spinner-chasing-dots .sk-dot1,
.sk-spinner-chasing-dots .sk-dot2 {
    width: 60%;
    height: 60%;
    display: inline-block;
    position: absolute;
    top: 0;
    background-color: #23b7e5;
    border-radius: 100%;
    -webkit-animation: sk-chasingDotsBounce 2s infinite ease-in-out;
    animation: sk-chasingDotsBounce 2s infinite ease-in-out;
}

.sk-spinner-chasing-dots .sk-dot2 {
    top: auto;
    bottom: 0px;
    -webkit-animation-delay: -1s;
    animation-delay: -1s;
}

@-webkit-keyframes sk-chasingDotsRotate {
    100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
    }
}

@keyframes sk-chasingDotsRotate {
    100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
    }
}

@-webkit-keyframes sk-chasingDotsBounce {
    0%,
    100% {
        -webkit-transform: scale(0);
        transform: scale(0);
    }
    50% {
        -webkit-transform: scale(1);
        transform: scale(1);
    }
}

@keyframes sk-chasingDotsBounce {
    0%,
    100% {
        -webkit-transform: scale(0);
        transform: scale(0);
    }
    50% {
        -webkit-transform: scale(1);
        transform: scale(1);
    }
}


/*
 *  Usage:
 *
 *    <div class="sk-spinner sk-spinner-three-bounce">
 *      <div class="sk-bounce1"></div>
 *      <div class="sk-bounce2"></div>
 *      <div class="sk-bounce3"></div>
 *    </div>
 *
 */

.sk-spinner-three-bounce.sk-spinner {
    margin: 0 auto;
    width: 70px;
    text-align: center;
}

.sk-spinner-three-bounce div {
    width: 18px;
    height: 18px;
    background-color: #23b7e5;
    border-radius: 100%;
    display: inline-block;
    -webkit-animation: sk-threeBounceDelay 1.4s infinite ease-in-out;
    animation: sk-threeBounceDelay 1.4s infinite ease-in-out;
    /* Prevent first frame from flickering when animation starts */
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}

.sk-spinner-three-bounce .sk-bounce1 {
    -webkit-animation-delay: -0.32s;
    animation-delay: -0.32s;
}

.sk-spinner-three-bounce .sk-bounce2 {
    -webkit-animation-delay: -0.16s;
    animation-delay: -0.16s;
}

@-webkit-keyframes sk-threeBounceDelay {
    0%,
    80%,
    100% {
        -webkit-transform: scale(0);
        transform: scale(0);
    }
    40% {
        -webkit-transform: scale(1);
        transform: scale(1);
    }
}

@keyframes sk-threeBounceDelay {
    0%,
    80%,
    100% {
        -webkit-transform: scale(0);
        transform: scale(0);
    }
    40% {
        -webkit-transform: scale(1);
        transform: scale(1);
    }
}


/*
 *  Usage:
 *
 *    <div class="sk-spinner sk-spinner-circle">
 *      <div class="sk-circle1 sk-circle"></div>
 *      <div class="sk-circle2 sk-circle"></div>
 *      <div class="sk-circle3 sk-circle"></div>
 *      <div class="sk-circle4 sk-circle"></div>
 *      <div class="sk-circle5 sk-circle"></div>
 *      <div class="sk-circle6 sk-circle"></div>
 *      <div class="sk-circle7 sk-circle"></div>
 *      <div class="sk-circle8 sk-circle"></div>
 *      <div class="sk-circle9 sk-circle"></div>
 *      <div class="sk-circle10 sk-circle"></div>
 *      <div class="sk-circle11 sk-circle"></div>
 *      <div class="sk-circle12 sk-circle"></div>
 *    </div>
 *
 */

.sk-spinner-circle.sk-spinner {
    margin: 0 auto;
    width: 22px;
    height: 22px;
    position: relative;
}

.sk-spinner-circle .sk-circle {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    top: 0;
}

.sk-spinner-circle .sk-circle:before {
    content: '';
    display: block;
    margin: 0 auto;
    width: 20%;
    height: 20%;
    background-color: #23b7e5;
    border-radius: 100%;
    -webkit-animation: sk-circleBounceDelay 1.2s infinite ease-in-out;
    animation: sk-circleBounceDelay 1.2s infinite ease-in-out;
    /* Prevent first frame from flickering when animation starts */
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}

.sk-spinner-circle .sk-circle2 {
    -webkit-transform: rotate(30deg);
    -ms-transform: rotate(30deg);
    transform: rotate(30deg);
}

.sk-spinner-circle .sk-circle3 {
    -webkit-transform: rotate(60deg);
    -ms-transform: rotate(60deg);
    transform: rotate(60deg);
}

.sk-spinner-circle .sk-circle4 {
    -webkit-transform: rotate(90deg);
    -ms-transform: rotate(90deg);
    transform: rotate(90deg);
}

.sk-spinner-circle .sk-circle5 {
    -webkit-transform: rotate(120deg);
    -ms-transform: rotate(120deg);
    transform: rotate(120deg);
}

.sk-spinner-circle .sk-circle6 {
    -webkit-transform: rotate(150deg);
    -ms-transform: rotate(150deg);
    transform: rotate(150deg);
}

.sk-spinner-circle .sk-circle7 {
    -webkit-transform: rotate(180deg);
    -ms-transform: rotate(180deg);
    transform: rotate(180deg);
}

.sk-spinner-circle .sk-circle8 {
    -webkit-transform: rotate(210deg);
    -ms-transform: rotate(210deg);
    transform: rotate(210deg);
}

.sk-spinner-circle .sk-circle9 {
    -webkit-transform: rotate(240deg);
    -ms-transform: rotate(240deg);
    transform: rotate(240deg);
}

.sk-spinner-circle .sk-circle10 {
    -webkit-transform: rotate(270deg);
    -ms-transform: rotate(270deg);
    transform: rotate(270deg);
}

.sk-spinner-circle .sk-circle11 {
    -webkit-transform: rotate(300deg);
    -ms-transform: rotate(300deg);
    transform: rotate(300deg);
}

.sk-spinner-circle .sk-circle12 {
    -webkit-transform: rotate(330deg);
    -ms-transform: rotate(330deg);
    transform: rotate(330deg);
}

.sk-spinner-circle .sk-circle2:before {
    -webkit-animation-delay: -1.1s;
    animation-delay: -1.1s;
}

.sk-spinner-circle .sk-circle3:before {
    -webkit-animation-delay: -1s;
    animation-delay: -1s;
}

.sk-spinner-circle .sk-circle4:before {
    -webkit-animation-delay: -0.9s;
    animation-delay: -0.9s;
}

.sk-spinner-circle .sk-circle5:before {
    -webkit-animation-delay: -0.8s;
    animation-delay: -0.8s;
}

.sk-spinner-circle .sk-circle6:before {
    -webkit-animation-delay: -0.7s;
    animation-delay: -0.7s;
}

.sk-spinner-circle .sk-circle7:before {
    -webkit-animation-delay: -0.6s;
    animation-delay: -0.6s;
}

.sk-spinner-circle .sk-circle8:before {
    -webkit-animation-delay: -0.5s;
    animation-delay: -0.5s;
}

.sk-spinner-circle .sk-circle9:before {
    -webkit-animation-delay: -0.4s;
    animation-delay: -0.4s;
}

.sk-spinner-circle .sk-circle10:before {
    -webkit-animation-delay: -0.3s;
    animation-delay: -0.3s;
}

.sk-spinner-circle .sk-circle11:before {
    -webkit-animation-delay: -0.2s;
    animation-delay: -0.2s;
}

.sk-spinner-circle .sk-circle12:before {
    -webkit-animation-delay: -0.1s;
    animation-delay: -0.1s;
}

@-webkit-keyframes sk-circleBounceDelay {
    0%,
    80%,
    100% {
        -webkit-transform: scale(0);
        transform: scale(0);
    }
    40% {
        -webkit-transform: scale(1);
        transform: scale(1);
    }
}

@keyframes sk-circleBounceDelay {
    0%,
    80%,
    100% {
        -webkit-transform: scale(0);
        transform: scale(0);
    }
    40% {
        -webkit-transform: scale(1);
        transform: scale(1);
    }
}


/*
 *  Usage:
 *
 *    <div class="sk-spinner sk-spinner-cube-grid">
 *      <div class="sk-cube"></div>
 *      <div class="sk-cube"></div>
 *      <div class="sk-cube"></div>
 *      <div class="sk-cube"></div>
 *      <div class="sk-cube"></div>
 *      <div class="sk-cube"></div>
 *      <div class="sk-cube"></div>
 *      <div class="sk-cube"></div>
 *      <div class="sk-cube"></div>
 *    </div>
 *
 */

.sk-spinner-cube-grid {
    /*
   * Spinner positions
   * 1 2 3
   * 4 5 6
   * 7 8 9
   */
}

.sk-spinner-cube-grid.sk-spinner {
    width: 30px;
    height: 30px;
    margin: 0 auto;
}

.sk-spinner-cube-grid .sk-cube {
    width: 33%;
    height: 33%;
    background-color: #23b7e5;
    float: left;
    -webkit-animation: sk-cubeGridScaleDelay 1.3s infinite ease-in-out;
    animation: sk-cubeGridScaleDelay 1.3s infinite ease-in-out;
}

.sk-spinner-cube-grid .sk-cube:nth-child(1) {
    -webkit-animation-delay: 0.2s;
    animation-delay: 0.2s;
}

.sk-spinner-cube-grid .sk-cube:nth-child(2) {
    -webkit-animation-delay: 0.3s;
    animation-delay: 0.3s;
}

.sk-spinner-cube-grid .sk-cube:nth-child(3) {
    -webkit-animation-delay: 0.4s;
    animation-delay: 0.4s;
}

.sk-spinner-cube-grid .sk-cube:nth-child(4) {
    -webkit-animation-delay: 0.1s;
    animation-delay: 0.1s;
}

.sk-spinner-cube-grid .sk-cube:nth-child(5) {
    -webkit-animation-delay: 0.2s;
    animation-delay: 0.2s;
}

.sk-spinner-cube-grid .sk-cube:nth-child(6) {
    -webkit-animation-delay: 0.3s;
    animation-delay: 0.3s;
}

.sk-spinner-cube-grid .sk-cube:nth-child(7) {
    -webkit-animation-delay: 0s;
    animation-delay: 0s;
}

.sk-spinner-cube-grid .sk-cube:nth-child(8) {
    -webkit-animation-delay: 0.1s;
    animation-delay: 0.1s;
}

.sk-spinner-cube-grid .sk-cube:nth-child(9) {
    -webkit-animation-delay: 0.2s;
    animation-delay: 0.2s;
}

@-webkit-keyframes sk-cubeGridScaleDelay {
    0%,
    70%,
    100% {
        -webkit-transform: scale3D(1, 1, 1);
        transform: scale3D(1, 1, 1);
    }
    35% {
        -webkit-transform: scale3D(0, 0, 1);
        transform: scale3D(0, 0, 1);
    }
}

@keyframes sk-cubeGridScaleDelay {
    0%,
    70%,
    100% {
        -webkit-transform: scale3D(1, 1, 1);
        transform: scale3D(1, 1, 1);
    }
    35% {
        -webkit-transform: scale3D(0, 0, 1);
        transform: scale3D(0, 0, 1);
    }
}


/*
 *  Usage:
 *
 *    <div class="sk-spinner sk-spinner-wordpress">
 *      <span class="sk-inner-circle"></span>
 *    </div>
 *
 */

.sk-spinner-wordpress.sk-spinner {
    background-color: #23b7e5;
    width: 30px;
    height: 30px;
    border-radius: 30px;
    position: relative;
    margin: 0 auto;
    -webkit-animation: sk-innerCircle 1s linear infinite;
    animation: sk-innerCircle 1s linear infinite;
}

.sk-spinner-wordpress .sk-inner-circle {
    display: block;
    background-color: #fff;
    width: 8px;
    height: 8px;
    position: absolute;
    border-radius: 8px;
    top: 5px;
    left: 5px;
}

@-webkit-keyframes sk-innerCircle {
    0% {
        -webkit-transform: rotate(0);
        transform: rotate(0);
    }
    100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
    }
}

@keyframes sk-innerCircle {
    0% {
        -webkit-transform: rotate(0);
        transform: rotate(0);
    }
    100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
    }
}


/*
 *  Usage:
 *
 *    <div class="sk-spinner sk-spinner-fading-circle">
 *      <div class="sk-circle1 sk-circle"></div>
 *      <div class="sk-circle2 sk-circle"></div>
 *      <div class="sk-circle3 sk-circle"></div>
 *      <div class="sk-circle4 sk-circle"></div>
 *      <div class="sk-circle5 sk-circle"></div>
 *      <div class="sk-circle6 sk-circle"></div>
 *      <div class="sk-circle7 sk-circle"></div>
 *      <div class="sk-circle8 sk-circle"></div>
 *      <div class="sk-circle9 sk-circle"></div>
 *      <div class="sk-circle10 sk-circle"></div>
 *      <div class="sk-circle11 sk-circle"></div>
 *      <div class="sk-circle12 sk-circle"></div>
 *    </div>
 *
 */

.sk-spinner-fading-circle.sk-spinner {
    margin: 0 auto;
    width: 22px;
    height: 22px;
    position: relative;
}

.sk-spinner-fading-circle .sk-circle {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    top: 0;
}

.sk-spinner-fading-circle .sk-circle:before {
    content: '';
    display: block;
    margin: 0 auto;
    width: 18%;
    height: 18%;
    background-color: #23b7e5;
    border-radius: 100%;
    -webkit-animation: sk-circleFadeDelay 1.2s infinite ease-in-out;
    animation: sk-circleFadeDelay 1.2s infinite ease-in-out;
    /* Prevent first frame from flickering when animation starts */
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}

.sk-spinner-fading-circle .sk-circle2 {
    -webkit-transform: rotate(30deg);
    -ms-transform: rotate(30deg);
    transform: rotate(30deg);
}

.sk-spinner-fading-circle .sk-circle3 {
    -webkit-transform: rotate(60deg);
    -ms-transform: rotate(60deg);
    transform: rotate(60deg);
}

.sk-spinner-fading-circle .sk-circle4 {
    -webkit-transform: rotate(90deg);
    -ms-transform: rotate(90deg);
    transform: rotate(90deg);
}

.sk-spinner-fading-circle .sk-circle5 {
    -webkit-transform: rotate(120deg);
    -ms-transform: rotate(120deg);
    transform: rotate(120deg);
}

.sk-spinner-fading-circle .sk-circle6 {
    -webkit-transform: rotate(150deg);
    -ms-transform: rotate(150deg);
    transform: rotate(150deg);
}

.sk-spinner-fading-circle .sk-circle7 {
    -webkit-transform: rotate(180deg);
    -ms-transform: rotate(180deg);
    transform: rotate(180deg);
}

.sk-spinner-fading-circle .sk-circle8 {
    -webkit-transform: rotate(210deg);
    -ms-transform: rotate(210deg);
    transform: rotate(210deg);
}

.sk-spinner-fading-circle .sk-circle9 {
    -webkit-transform: rotate(240deg);
    -ms-transform: rotate(240deg);
    transform: rotate(240deg);
}

.sk-spinner-fading-circle .sk-circle10 {
    -webkit-transform: rotate(270deg);
    -ms-transform: rotate(270deg);
    transform: rotate(270deg);
}

.sk-spinner-fading-circle .sk-circle11 {
    -webkit-transform: rotate(300deg);
    -ms-transform: rotate(300deg);
    transform: rotate(300deg);
}

.sk-spinner-fading-circle .sk-circle12 {
    -webkit-transform: rotate(330deg);
    -ms-transform: rotate(330deg);
    transform: rotate(330deg);
}

.sk-spinner-fading-circle .sk-circle2:before {
    -webkit-animation-delay: -1.1s;
    animation-delay: -1.1s;
}

.sk-spinner-fading-circle .sk-circle3:before {
    -webkit-animation-delay: -1s;
    animation-delay: -1s;
}

.sk-spinner-fading-circle .sk-circle4:before {
    -webkit-animation-delay: -0.9s;
    animation-delay: -0.9s;
}

.sk-spinner-fading-circle .sk-circle5:before {
    -webkit-animation-delay: -0.8s;
    animation-delay: -0.8s;
}

.sk-spinner-fading-circle .sk-circle6:before {
    -webkit-animation-delay: -0.7s;
    animation-delay: -0.7s;
}

.sk-spinner-fading-circle .sk-circle7:before {
    -webkit-animation-delay: -0.6s;
    animation-delay: -0.6s;
}

.sk-spinner-fading-circle .sk-circle8:before {
    -webkit-animation-delay: -0.5s;
    animation-delay: -0.5s;
}

.sk-spinner-fading-circle .sk-circle9:before {
    -webkit-animation-delay: -0.4s;
    animation-delay: -0.4s;
}

.sk-spinner-fading-circle .sk-circle10:before {
    -webkit-animation-delay: -0.3s;
    animation-delay: -0.3s;
}

.sk-spinner-fading-circle .sk-circle11:before {
    -webkit-animation-delay: -0.2s;
    animation-delay: -0.2s;
}

.sk-spinner-fading-circle .sk-circle12:before {
    -webkit-animation-delay: -0.1s;
    animation-delay: -0.1s;
}

@-webkit-keyframes sk-circleFadeDelay {
    0%,
    39%,
    100% {
        opacity: 0;
    }
    40% {
        opacity: 1;
    }
}

@keyframes sk-circleFadeDelay {
    0%,
    39%,
    100% {
        opacity: 0;
    }
    40% {
        opacity: 1;
    }
}

.mask {
        position: absolute; top: 0px; filter: alpha(opacity=30); background-color: #777;
        z-index: 9999; left: 0px;
        opacity:0.5; -moz-opacity:0.5;
        display: marker;
    }
    
.sk-spinner {
margin: 100px auto;  
}

</style>

<script type="text/javascript">
function showMask(){
    var maskHtml = '<div id="mask" class="mask"><div class="sk-spinner sk-spinner-three-bounce"><div class="sk-bounce1"></div><div class="sk-bounce2"></div><div class="sk-bounce3"></div></div></div>';
    $('body').prepend(maskHtml);
    $('#mask').css("height",$(document).height());
    $('#mask').css("width",$(document).width());
}
//隐藏遮罩层  
function hideMask(){
    $('body').remove($('#mask'));
}
</script>
</head>
<body>
	<button onclick="showMask();">show</button>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
	<h1>aaaaaaaaaaaaaaaaaaaaaaaaa</h1>
</body>
</html>