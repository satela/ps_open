/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.usercenter {
	import laya.ui.*;
	import laya.display.*;
	import laya.display.Text;
	import script.prefabScript.LinkTextControl;
	import script.prefabScript.TopBannerControl;
	import script.usercenter.UserMainControl;

	public class UserMainPanelUI extends View {
		public var panel_main:Panel;
		public var firstPage:Text;
		public var myorder:Text;
		public var userName:Text;
		public var logout:Text;
		public var bannertitile:Label;
		public var sp_container:Sprite;
		public var btntxt0:Label;
		public var btntxt12:Label;
		public var btntxt1:Label;
		public var btntxt9:Label;
		public var btntxt10:Label;
		public var btntxt5:Label;
		public var btntxt6:Label;
		public var btntxt11:Label;
		public var btntxt3:Label;
		public var btntxt4:Label;
		public var btntxt7:Label;
		public var btntxt8:Label;
		public var toptitle:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadScene("usercenter/UserMainPanel");

		}

	}
}