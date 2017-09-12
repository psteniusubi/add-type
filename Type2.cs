using System;

namespace MyTypes {
	public class Type2 {
		private Type1 owner;
		public Type2(Type1 owner) {
			this.owner = owner;
		}
		public string Id {get;set;}
		public Type1 Owner { get { return owner; } }
	}
}
