/** * <p>Original Author: Daniel Freeman</p> * * <p>Permission is hereby granted, free of charge, to any person obtaining a copy * of this software and associated documentation files (the "Software"), to deal * in the Software without restriction, including without limitation the rights * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell * copies of the Software, and to permit persons to whom the Software is * furnished to do so, subject to the following conditions:</p> * * <p>The above copyright notice and this permission notice shall be included in * all copies or substantial portions of the Software.</p> * * <p>THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN * THE SOFTWARE.</p> * * <p>Licensed under The MIT License</p> * <p>Redistributions of files must retain the above copyright notice.</p> */package com.danielfreeman.madcomponents {	/** * Some colour utilities */		public class Colour {		static public function limit(n:int,hi:int,lo:int):uint {			if (n<lo) return lo;			else if (n>hi) return hi;			else return n;		}			static public function darken(n:uint,amount:int=-64):uint {			var r:uint,g:uint,b:uint,tot:int;			r=n>>16 & 0xff;g=n>>8 & 0xff;b=n & 0xff;			return (limit(r+amount,0xff,0)<<16)+(limit(g+amount,0xff,0)<<8)+(limit(b+amount,0xff,0));		}						static public function lighten(n:uint,amount:int=16):uint {			return darken(n,amount);		}						static public function power(value:uint):Number {			return (((value >> 16) & 0xFF) + ((value >> 8) & 0xFF) + (value & 0xFF)) / 765.0;		}	}}