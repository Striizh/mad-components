﻿/** * <p>Original Author: Daniel Freeman</p> * * <p>Permission is hereby granted, free of charge, to any person obtaining a copy * of this software and associated documentation files (the "Software"), to deal * in the Software without restriction, including without limitation the rights * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell * copies of the Software, and to permit persons to whom the Software is * furnished to do so, subject to the following conditions:</p> * * <p>The above copyright notice and this permission notice shall be included in * all copies or substantial portions of the Software.</p> * * <p>THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN * THE SOFTWARE.</p> * * <p>Licensed under The MIT License</p> * <p>Redistributions of files must retain the above copyright notice.</p> */package {		import flash.display.Sprite;	import flash.display.StageAlign;	import flash.display.StageScaleMode;	import flash.events.Event;	import com.danielfreeman.madcomponents.*;		public class MadHelloWorld extends Sprite {						protected static const HOME_VIEW:XML = <vertical alignH="centre" alignV="centre" width="100">													<label alignH="centre">Hello, World!</label>													<button id="forward" alignH="fill">Continue</button>												</vertical>;																										protected static const MY_NEW_VIEW:XML = <vertical alignH="centre" alignV="centre" width="100">													<label alignH="centre">Success!</label>													<button id="back" alignH="fill">Back</button>												</vertical>;																										protected static const NAVIGATOR:XML = <navigation id="navigation" leftArrow="" title="HomeView">													{HOME_VIEW}													{MY_NEW_VIEW}												</navigation>;																										protected var _navigation:UINavigation;		public function MadHelloWorld(screen:Sprite = null) {			if (screen)				screen.addChild(this);							stage.align = StageAlign.TOP_LEFT;  			stage.scaleMode = StageScaleMode.NO_SCALE;						UI.create(this, NAVIGATOR);						_navigation = UINavigation(UI.findViewById("navigation"));						var forward:UIButton = UIButton(UI.findViewById("forward"));			forward.addEventListener(UIButton.CLICKED, goForward);						var back:UIButton = UIButton(UI.findViewById("back"));			back.addEventListener(UIButton.CLICKED, goBack);		}						protected function goForward(event:Event):void {			_navigation.goToPage(1,UIPages.SLIDE_LEFT);			_navigation.title = "MyNewView";		}						protected function goBack(event:Event):void {			_navigation.goToPage(0,UIPages.SLIDE_RIGHT);			_navigation.title = "HomeView";		}	}	}