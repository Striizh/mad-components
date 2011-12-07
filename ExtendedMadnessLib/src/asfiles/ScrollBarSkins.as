﻿/** * <p>Original Author: Daniel Freeman</p> * * <p>Permission is hereby granted, free of charge, to any person obtaining a copy * of this software and associated documentation files (the "Software"), to deal * in the Software without restriction, including without limitation the rights * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell * copies of the Software, and to permit persons to whom the Software is * furnished to do so, subject to the following conditions:</p> * * <p>The above copyright notice and this permission notice shall be included in * all copies or substantial portions of the Software.</p> * * <p>THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE * AUTHORS' OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN * THE SOFTWARE.</p> * * <p>Licensed under The MIT License</p> * <p>Redistributions of files must retain the above copyright notice.</p> */package asfiles {			import flash.display.Sprite;		import flash.events.MouseEvent;				public class ScrollBarSkins extends ScrollBarStyle {				public var sb_track:ScrollBarTrack;		public var sb_upbtn:ScrollBarButton;		public var sb_downbtn:ScrollBarButton;		public var sb_slider:ScrollBarSlider;		protected var _buttons:Boolean				public function ScrollBarSkins(screen:Sprite,xx:int,yy:int,heigt:int=-1,buttons:Boolean = true) {						screen.addChild(this);			this.x=xx;y=yy;			_buttons = buttons;			if (heigt<0) heigt=hght;			sb_track=new ScrollBarTrack(this,0,buttons ? wdth : 0,heigt+(buttons ? 0 : 2*wdth));			sb_slider=new ScrollBarSlider(this,-1,30);			sb_upbtn=new ScrollBarButton(this,0,0);			sb_downbtn=new ScrollBarButton(this,0,heigt,true);		//	graphics.clear();		//	graphics.beginFill(0xcccccc);		//	graphics.drawRect(wdth+1,0,1,heigt+1);						sb_track.addEventListener(MouseEvent.MOUSE_DOWN,sb_slider.mdown);		}						public function get sb_posn():int {			return sb_slider.y-(_buttons ? wdth-1 : 0);		}		public function get range():int {			return sb_track.height-sb_slider.height-2;		}		public function get position():Number {			return sb_posn/range;		}		public function set sb_posn(v:int):void {			sb_slider.y=((v<0) ? 0 : v)+(_buttons ? wdth-1 : 0);			if (sb_slider.y>sb_track.height-sb_slider.height+(_buttons ? wdth-1 : 0)) sb_slider.y=sb_track.height-sb_slider.height+(_buttons ? wdth-1 : 0);		}		}}