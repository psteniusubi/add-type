using System;
using System.Collections;

namespace MyTypes {
	public class Type1 {
		public Type1(Hashtable args) { }
		public string Id {get;set;}
		public Type2 Get() {
			return new Type2(this);
		}
	}
}
