package model.orderModel
{
	public class OrderConstant
	{
		public static const MEASURE_UNIT_AREA:String = "平方米";//
		public static const MEASURE_UNIT_PERIMETER:String = "米";//
		
		public static const MEASURE_UNIT_LONG_SIDE:String = "长度米";//取长的一边计算（只取一条长边的长度);
		
		public static const MEASURE_UNIT_TOP_BOTTOM:String = "上下米";//取上下两条边的长度和;

		public static const MEASURE_UNIT_LEFT_RIGHT:String = "左右米";//取左右两条边的长度和;

		public static const MEASURE_UNIT_LEFT_HEIGHT:String = "左边米";//取左右两条边的长度和;
		public static const MEASURE_UNIT_RIGHT_HEIGHT:String = "右边米";//取左右两条边的长度和;

		public static const MEASURE_UNIT_TOP_LEN:String = "上边米";//取上边的长度;
		public static const MEASURE_UNIT_BOTTOM_LEN:String = "下边米";//取下边长度;

		
		public static const MEASURE_UNIT_FOUR_SIDE:String = "周长米";//取周长;

		public static const MEASURE_UNIT_LONG_TWO_SIDE:String = "宽边米";//取长的两条边计算;

		public static const MEASURE_UNIT_KILOMETER:String = "千克";//
		public static const MEASURE_UNIT_KILO:String = "克";//
		
		public static const MEASURE_UNIT_SINGLE_NUM:String = "个";//
		
		public static const MEASURE_UNIT_SINGLE_SUIT:String = "件";//

		public static const MEASURE_UNIT_SINGLE_TAO:String = "套";//

		public static const ATTACH_NO:String = "SPno";
		public static const ATTACH_JPG:String = "SPjpg";
		public static const ATTACH_PNG:String = "SPpng";
		public static const ATTACH_PEIJIAN:String = "SPpeijian";
		
		public static const ATTACH_PJZZ:String = "SPzz";//遮罩图片
		public static const ATTACH_PJSM:String = "SPsm";//双面图片

		

		public static const CUTOFF_H_V:String = "SPpj"; //横向竖直拼接
		public static const AVERAGE_CUTOFF:String = "SPdfcq"; //等份裁切
	
		public static const RIGHTUP_DAKOU:String = "SPDKWZ"; //正上方打扣
		
		public static const FEIBIAO_DAKOU:String = "SPFBdakou"; //非标打扣


		public static const DOUBLE_SIDE_SAME_TECHNO:String = "SPTE10320";//双面相同
		public static const DOUBLE_SIDE_SAME_TECHNO_UV:String = "SPTE230414160834510";//双面相同

		public static const DOUBLE_SIDE_UNSAME_TECHNO:String = "SPTE10330";//双面不同
		public static const DOUBLE_SIDE_UNSAME_TECHNO_UV:String = "SPTE230414160849011";//双面不同

		public static const UNNORMAL_CUT_TECHNO:String = "SPTE10420";//异性切割
		public static const UNNORMAL_CUT_TECHNO_UV:String = "SPTE230428161108291";//异性切割

		
		public static const AVGCUT_TECHNO:String = "SPTE10160";//等份裁切
		public static const PART_LAYOUT_WHITE:String = "SPTE12530";//局部铺白
		public static const PART_LAYOUT_WHITE_UV:String = "SPTE221209161833556";//局部铺白
		public static const PART_LAYOUT_WHITE_PINFU:String = "SPTE231020150654326";//局部铺白

		public static const NEED_PAITING_AREA:String = "SPpymj";//按喷印面积计价的工艺
		
		


		//public static const HORIZANTAL_CUT_COMBINE:String = "SPTE10160";//横向拼接
		//public static const VERTICAL_CUT_COMBINE:String = "SPTE10150";//竖向拼接

		public static const MANUFACTURE_TYPE_PAINT:int = 2;//喷印输出中心
		public static const MANUFACTURE_TYPE_TEXT_PAINT:int = 5;//字牌
		
		public static const PAINTING:int = 1;//喷印下单
		
		public static const CUTTING:int = 2;//雕刻下单
		
		public static const MAX_CUT_THRESHOLD:int = 160;// 需要优先 裁切到 120 cm 的阈值，材料最大宽度小于 160 优先选到 120
		
		public static const FUBAI_WOOD_MAX_WIDTH:int = 120;//腹板的最大 宽度 是 120 cm，，如果有超幅拼接 工艺 且 有超过 120cm的 需要重新选择;
		
		public static const DFCQ_MAX_WIDTH:int = 240;  //等分裁切 最大宽度
		public static const DFCQ_MAX_HEIGHT:int = 120; //等分裁切 最大高度

		public static const CUT_PRIOR_WIDTH:int = 120;//优先裁切宽度
		public static const OUTPUT_ICON:Array=["star.png","circle.png","square.png"];
		public static const OUTPUT_COLOR:Array=["#98FB98","#BBFFFF","#FFE1FF"];
		
		public static const packagemaxCout:int = 21;
		
		public static const OCCUPY_CAPACITY_COUNTDOWN:int = 150;
		
		public static const DELIVERY_TYPE_BY_MANUFACTURER:String = "送货上门";
		public static const DELIVERY_TYPE_BY_SELF:String = "工厂自提";
		public static const DELIVERY_TYPE_BY_OTHER:String = "专车配送";
		public static const DELIVERY_TYPE_BY_NORMAL_DELIVERY:String = "普通快递";

		public static const MAX_ORDER_NUMER:int = 100;


		

	}
}