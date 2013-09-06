/**
 * <p>Original Author: Daniel Freeman</p>
 *
 * <p>Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:</p>
 *
 * <p>The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.</p>
 *
 * <p>THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.</p>
 *
 * <p>Licensed under The MIT License</p>
 * <p>Redistributions of files must retain the above copyright notice.</p>
 */
 
 
 package com.powerflasher.SampleApp {
	
	import flash.utils.getQualifiedClassName;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;	
	import com.danielfreeman.madcomponents.*;
	import com.danielfreeman.extendedMadness.*;
	import com.danielfreeman.stage3Dacceleration.*;
	import flash.display.Bitmap;
	import flash.utils.getQualifiedClassName;
	
	/**
	 * @author danielfreeman
	 */
	public class WheelMenuTest0 extends Sprite {
		
		[Embed(source="images/mp3_48.png")]
		protected static const MP3:Class;
		
		[Embed(source="images/mp4_48.png")]
		protected static const MP4:Class;

		[Embed(source="images/palm_48.png")]
		protected static const PALM:Class;
		
		[Embed(source="images/psp_48.png")]
		protected static const PSP:Class;
		
		[Embed(source="images/usb_48.png")]
		protected static const USB:Class;	
		
				
		protected static const DATA:XML =
			
			<data>
				<item label="MP3 player" image={getQualifiedClassName(MP3)}/>
				<item label="MP4 player" image={getQualifiedClassName(MP4)}/>
				<item label="Palm pilot" image={getQualifiedClassName(PALM)}/>
				<item label="Sony PSP" image={getQualifiedClassName(PSP)}/>
				<item label="USB stick" image={getQualifiedClassName(USB)}/>
			</data>;
		
			
		protected static const LAYOUT:XML =
		
			<vertical stageColour="#FFFFCC" >
				<wheelMenu id="@menu" motionBlur="true" alignV="centre" alignH="centre" radius="130">
					{DATA}
				</wheelMenu>
			</vertical>;
			
			
		protected var _wheelMenu:WheelMenu;
		

		public function WheelMenuTest0(screen:Sprite = null) {
			if (screen)
				screen.addChild(this);

			stage.align = StageAlign.TOP_LEFT;  
			stage.scaleMode = StageScaleMode.NO_SCALE;

			WheelMenu.create(this, LAYOUT);
		}

	}
}