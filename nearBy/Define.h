//
//  Define.h
//  Go travel
//
//  Created by 千锋 on 16/5/30.
//  Copyright © 2016年 Fingersfive. All rights reserved.
//

/**
 *  app通用Define
 */

#ifndef Define_h
#define Define_h

/**白天模式*/
#define daytimeColor [UIColor colorWithRed:231 / 255.0 green:231 / 255.0 blue:231 / 255.0 alpha:1]
/**夜间模式*/
#define nightColor [UIColor blackColor]

/**屏幕宽度*/
#define WIDTH [UIScreen mainScreen].bounds.size.width
/**屏幕高度*/
#define HEIGHT [UIScreen mainScreen].bounds.size.height


#define NEARBY_TAG 100



//=============================第一界面========================
//第一界面的游记，精彩故事（推荐界面）
#define FTravelNotes @"http://api.breadtrip.com/v2/index/?"

//游记（更多）
//参数：next_start

//游记详情
#define FTravelNotesDetail @"http://api.breadtrip.com/trips/%@/" //参数是请求下来的游记对应的id值


//精彩故事（更多）
#define FTravelStories @"http://api.breadtrip.com/v2/new_trip/spot/hot/list/?"//参数start ：起始位置
//故事详情
#define FTravelStoryDetail @"http://api.breadtrip.com/v2/new_trip/spot/?"//参数spot_id ：每个故事数据中的spot_id参数


//打算添加查询功能
#define FSearch @"http://api.breadtrip.com/v2/search/?" //参数key：百分号编码





//==========================第二界面=====================






#endif /* Define_h */
