/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.inuoPicStore {
	import laya.ui.*;
	import laya.display.*;

	public class PicShortItemNuoUI extends View {
		public var frame:Image;
		public var sel:Button;
		public var selLbl:Label;
		public var img:Image;
		public var filename:Label;
		public var fileinfo:Label;
		public var yixingimg:Image;
		public var yinglbl:Label;
		public var delYixing:Button;
		public var backimg:Image;
		public var backlbl:Label;
		public var delBack:Button;
		public var partImg:Image;
		public var partlbl:Label;
		public var delPart:Button;
		public var btndelete:Button;
		public var selYixingBtn:Button;
		public var selBackBtn:Button;
		public var countdown:Box;
		public var autodellabel:Label;
		public var warningimg:Image;
		public var selpart:Button;
		public var aiBtn:Button;
		public var disableImg:Image;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":200,"height":320},"compId":2,"child":[{"type":"Image","props":{"top":0,"skin":"uiCommonUpdate/radBg.png","sizeGrid":"2,2,2,2","right":0,"left":0,"bottom":0},"compId":39},{"type":"Image","props":{"var":"frame","top":0,"skin":"commers/inputfocus.png","sizeGrid":"5,5,5,5","right":0,"left":0,"bottom":0},"compId":15},{"type":"Image","props":{"y":0,"skin":"uiCommonUpdate/grayFrame.png","right":0,"left":0,"height":320,"sizeGrid":"9,6,7,5"},"compId":29},{"type":"Button","props":{"y":10,"x":9,"var":"sel","skin":"uiCommonUpdate/grennsel.png"},"compId":12},{"type":"Label","props":{"y":14,"x":39,"width":52,"var":"selLbl","text":"选择","fontSize":14,"font":"SimHei","color":"#003dc6"},"compId":30},{"type":"Image","props":{"y":133,"x":100,"width":180,"var":"img","skin":"iconsNew/defaultImg.png","height":180,"anchorY":0.5,"anchorX":0.5},"compId":3},{"type":"Label","props":{"y":232,"x":10,"wordWrap":false,"width":180,"var":"filename","valign":"middle","text":"名称.jpg 宽 3256 名称","overflow":"scroll","height":20,"fontSize":14,"font":"SimHei","color":"#485157","bold":true,"align":"center"},"compId":4},{"type":"Label","props":{"y":257,"x":10,"wordWrap":true,"width":180,"var":"fileinfo","valign":"top","text":"JPG|CMYK|300DPI|1230*1230","height":13,"fontSize":12,"font":"SimHei","color":"#B1B1B1","bold":false,"align":"center"},"compId":8},{"type":"Image","props":{"y":260,"x":100,"width":56,"var":"yixingimg","skin":"upload1/fold.png","height":20,"anchorY":0.5,"anchorX":0.5},"compId":16,"child":[{"type":"Label","props":{"y":59,"x":0,"var":"yinglbl","text":"异形","height":12,"fontSize":12,"font":"SimHei"},"compId":31},{"type":"Button","props":{"y":0,"x":9,"width":38,"var":"delYixing","stateNum":1,"skin":"uiCommonUpdate/greenFrmBtn.png","labelSize":10,"labelFont":"SimHei","labelColors":"#003dc6,#003dc6,#003dc6","labelBold":false,"label":"删除","height":20,"sizeGrid":"4,13,7,14"},"compId":35}]},{"type":"Image","props":{"y":260,"x":40,"width":56,"var":"backimg","skin":"upload1/fold.png","height":56,"anchorY":0.5,"anchorX":0.5},"compId":17,"child":[{"type":"Label","props":{"y":59,"x":0,"var":"backlbl","text":"反面","height":12,"fontSize":12,"font":"SimHei"},"compId":32},{"type":"Button","props":{"y":18,"x":9,"width":38,"var":"delBack","stateNum":1,"skin":"uiCommonUpdate/greenFrmBtn.png","labelSize":10,"labelFont":"SimHei","labelColors":"#003dc6,#003dc6,#003dc6,","label":"删除","height":20,"sizeGrid":"4,13,7,14"},"compId":36}]},{"type":"Image","props":{"y":260,"x":160,"width":56,"var":"partImg","skin":"upload1/fold.png","right":12,"height":56,"anchorY":0.5,"anchorX":0.5},"compId":26,"child":[{"type":"Label","props":{"y":59,"x":0,"var":"partlbl","text":"局部铺白","height":12,"fontSize":12,"font":"SimHei"},"compId":33},{"type":"Button","props":{"y":18,"x":9,"width":38,"var":"delPart","stateNum":1,"skin":"uiCommonUpdate/greenFrmBtn.png","labelSize":10,"labelFont":"SimHei","labelColors":"#003dc6,#003dc6,#003dc6,","labelBold":false,"label":"删除","height":20,"sizeGrid":"4,13,7,14"},"compId":37}]},{"type":"Button","props":{"y":6,"x":166,"var":"btndelete","stateNum":2,"skin":"upload1/closebutton.png"},"compId":7},{"type":"Button","props":{"y":281,"x":76,"width":49,"var":"selYixingBtn","stateNum":3,"skin":"uiCommonUpdate/small3Btn.png","labelSize":12,"labelColors":"#B1B1B1,#FFFFFF,#FFFFFF","label":"+异形","height":24},"compId":13},{"type":"Button","props":{"y":281,"x":16,"width":49,"var":"selBackBtn","stateNum":3,"skin":"uiCommonUpdate/small3Btn.png","labelSize":12,"labelFont":"SimHei","labelColors":"#B1B1B1,#FFFFFF,#FFFFFF","label":"+反面","height":24},"compId":14},{"type":"Box","props":{"y":305,"x":10,"visible":false,"var":"countdown"},"compId":22,"child":[{"type":"Label","props":{"y":0,"wordWrap":false,"width":90,"valign":"middle","text":"自动删除倒计时：","overflow":"scroll","left":0,"fontSize":12,"font":"SimHei","color":"#262B2E","align":"left"},"compId":20},{"type":"Label","props":{"y":0,"wordWrap":false,"width":36,"var":"autodellabel","valign":"middle","text":"30天","overflow":"scroll","left":91,"fontSize":12,"font":"SimHei","color":"#262B2E","align":"left"},"compId":21}]},{"type":"Image","props":{"y":46,"x":14,"width":40,"var":"warningimg","skin":"commers/warning.png","height":40},"compId":23},{"type":"Button","props":{"y":281,"x":136,"width":49,"var":"selpart","stateNum":3,"skin":"uiCommonUpdate/small3Btn.png","labelSize":12,"labelFont":"SimHei","labelColors":"#B1B1B1,#FFFFFF,#FFFFFF","label":"+局部\\n通道","height":24},"compId":24},{"type":"Button","props":{"y":10,"x":95,"width":50,"var":"aiBtn","skin":"uiCommonUpdate/small3Btn.png","labelSize":16,"labelFont":"SimHei","labelColors":"#003dc6,#FFFFFF,#FFFFFF","label":"效果"},"compId":41},{"type":"Image","props":{"var":"disableImg","top":0,"skin":"uiCommonUpdate/grayBg.png","sizeGrid":"3,3,3,3","right":0,"left":0,"bottom":0,"alpha":0.7},"compId":40}],"loadList":["uiCommonUpdate/radBg.png","commers/inputfocus.png","uiCommonUpdate/grayFrame.png","uiCommonUpdate/grennsel.png","iconsNew/defaultImg.png","upload1/fold.png","uiCommonUpdate/greenFrmBtn.png","upload1/closebutton.png","uiCommonUpdate/small3Btn.png","commers/warning.png","uiCommonUpdate/grayBg.png"],"loadList3D":[]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}