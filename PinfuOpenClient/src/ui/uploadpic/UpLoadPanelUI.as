/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.uploadpic {
	import laya.ui.*;
	import laya.display.*;
	import laya.html.dom.HTMLDivElement;
	import script.picUpload.UpLoadAndOrderContrl;

	public class UpLoadPanelUI extends View {
		public var bgimg:Image;
		public var mainpanel:Panel;
		public var btnClose:Button;
		public var goonbtn:Button;
		public var errortxt:Label;
		public var btnOpenFile:Button;
		public var fileList:List;
		public var uploadinfo:HTMLDivElement;

		override protected function createChildren():void {
			super.createChildren();
			loadScene("uploadpic/UpLoadPanel");

		}

	}
}