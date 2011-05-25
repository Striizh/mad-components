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
package
{
	import com.danielfreeman.madcomponents.*;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;

	
	public class MadComponentsTree extends Sprite {
		
		protected static const DATA:XML = <data>
											<Animals>
												<Felines>
													<Tiger/>
													<Leopard/>
													<Lion/>
													<Panther/>
												</Felines>
												<Canines>
													<Dog/>
													<Wolf/>
													<Hyena/>
												</Canines>
												<Monkeys>
													<Baboon/>
													<Macaques/>
													<Chimpanzee/>
												</Monkeys>
											</Animals>
											<Household>
												<Kitchen>
													<Cooker/>
													<Fridge/>
													<Table/>
													<Cupboard/>
												</Kitchen>
												<Lounge>
													<Television/>
													<Sofa/>
													<Rug/>
													<Fireplace/>
												</Lounge>
											</Household>
											<Colours>
    											<Red/>
        										<Orange/>
        										<Yellow/>
        										<Green/>
        										<Blue/>
												<Indigo/>
											</Colours>
										</data>;
			
		protected static const DETAIL:XML = <vertical>
												<label id="detail" alignH="centre" alignV="centre">ggg</label>
											</vertical>;
							
	
		protected static const TREE_NAVIGATOR:XML = <treeNavigation id="tree">
														{DATA}
														{DETAIL}
													</treeNavigation>;
		
		
		protected var _detail:UILabel;
		
		
		public function MadComponentsTree(screen:Sprite = null) {
			if (screen)
				screen.addChild(this);
			
			stage.align = StageAlign.TOP_LEFT;  
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			UI.create(this, TREE_NAVIGATOR);

			var uiTreeNavigation:UITreeNavigation = UITreeNavigation(UI.findViewById("tree"));
			uiTreeNavigation.addEventListener(Event.COMPLETE,treeComplete);
			
			_detail = UILabel(UI.findViewById("detail"));
		}

		
		protected function treeComplete(event:Event):void {
			_detail.text = UITreeNavigation(event.target).label;
		}

	}
}