.class public Lcom/jzb/qipaisdk/UpdateListActivity;
.super Landroid/app/Activity;
.source "UpdateListActivity.java"

# interfaces
.implements Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;
.implements Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;


# instance fields
.field _root:Landroid/view/ViewGroup;

.field banner_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private dx:I

.field private dy:I

.field private exitTime:J

.field private firstX:I

.field private firstY:I

.field private img_red_envelope:Landroid/widget/ImageView;

.field private isFirst:Z

.field private json:Ljava/lang/String;

.field private lastX:I

.field private lastY:I

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private list_path:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBannerAdapter:Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBannerVp:Lcom/jzb/qipaisdk/viewpager/LooperViewPager;

.field mDownApkListAdapter:Lcom/jzb/qipaisdk/DownApkListAdapter;

.field private mDownloadTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lzy/okserver/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mImg_bg:Landroid/widget/ImageView;

.field private mImg_gb:Landroid/widget/ImageView;

.field private mLeft:I

.field private mLl_announcement:Landroid/widget/LinearLayout;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRelay_top:Landroid/widget/RelativeLayout;

.field private mTop:I

.field private mTv_pao:Landroid/widget/TextView;

.field private mTv_right:Landroid/widget/TextView;

.field private mTv_title:Landroid/widget/TextView;

.field private mV_line:Landroid/view/View;

.field private okDownload:Lcom/lzy/okserver/OkDownload;

.field startTime:J

.field private statusBarHeight:I

.field private stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field test:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->isFirst:Z

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->startTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/jzb/qipaisdk/UpdateListActivity;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->isFirst:Z

    return p0
.end method

.method static synthetic access$002(Lcom/jzb/qipaisdk/UpdateListActivity;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->isFirst:Z

    return p1
.end method

.method static synthetic access$100(Lcom/jzb/qipaisdk/UpdateListActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->firstX:I

    return p0
.end method

.method static synthetic access$102(Lcom/jzb/qipaisdk/UpdateListActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->firstX:I

    return p1
.end method

.method static synthetic access$200(Lcom/jzb/qipaisdk/UpdateListActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->firstY:I

    return p0
.end method

.method static synthetic access$202(Lcom/jzb/qipaisdk/UpdateListActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->firstY:I

    return p1
.end method

.method static synthetic access$300(Lcom/jzb/qipaisdk/UpdateListActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->lastX:I

    return p0
.end method

.method static synthetic access$302(Lcom/jzb/qipaisdk/UpdateListActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->lastX:I

    return p1
.end method

.method static synthetic access$400(Lcom/jzb/qipaisdk/UpdateListActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->lastY:I

    return p0
.end method

.method static synthetic access$402(Lcom/jzb/qipaisdk/UpdateListActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->lastY:I

    return p1
.end method

.method static synthetic access$502(Lcom/jzb/qipaisdk/UpdateListActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mLeft:I

    return p1
.end method

.method static synthetic access$600(Lcom/jzb/qipaisdk/UpdateListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->img_red_envelope:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/jzb/qipaisdk/UpdateListActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mTop:I

    return p1
.end method

.method static synthetic access$802(Lcom/jzb/qipaisdk/UpdateListActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->dy:I

    return p1
.end method

.method static synthetic access$902(Lcom/jzb/qipaisdk/UpdateListActivity;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->dx:I

    return p1
.end method

.method private exitApp()V
    .locals 6

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->exitTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x7d0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    const-string v0, "\u518d\u6309\u4e00\u6b21\u9000\u51fa"

    const/4 v1, 0x0

    .line 413
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->exitTime:J

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/UpdateListActivity;->finish()V

    :goto_0
    return-void
.end method

.method private getStatusBarHeight()I
    .locals 3

    .line 219
    iget v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->statusBarHeight:I

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    .line 221
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 225
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/UpdateListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->statusBarHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    :cond_0
    :goto_0
    iget v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->statusBarHeight:I

    return v0
.end method


# virtual methods
.method public OnReload()V
    .locals 0

    .line 207
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/UpdateListActivity;->initData()V

    return-void
.end method

.method public goNext()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->stringMap:Ljava/util/Map;

    const-string v1, "page"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/jzb/qipaisdk/AppUtils;->parseKeyAndValueToMapList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->list:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 247
    :goto_0
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->list_path:Ljava/util/ArrayList;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/UpdateListActivity;->goNext2()V

    .line 251
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/UpdateListActivity;->goNext3()V

    return-void
.end method

.method public goNext2()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->stringMap:Ljava/util/Map;

    const-string v1, "test"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/jzb/qipaisdk/AppUtils;->parseKeyAndValueToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->test:Ljava/util/Map;

    .line 259
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->test:Ljava/util/Map;

    const-string v1, "background"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->test:Ljava/util/Map;

    const-string v2, "img"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "http"

    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mImg_bg:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jzb/qipaisdk/AppUtils;->getImageResourceId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mImg_bg:Landroid/widget/ImageView;

    invoke-static {p0, v0, v2}, Lcom/jzb/qipaisdk/AppUtils;->disImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    const-string v0, "http"

    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->img_red_envelope:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/jzb/qipaisdk/AppUtils;->getImageResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->img_red_envelope:Landroid/widget/ImageView;

    invoke-static {p0, v1, v0}, Lcom/jzb/qipaisdk/AppUtils;->disImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 274
    :goto_1
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->stringMap:Ljava/util/Map;

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/jzb/qipaisdk/AppUtils;->parseKeyAndValueToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mTv_title:Landroid/widget/TextView;

    const-string v2, "text"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mTv_title:Landroid/widget/TextView;

    const-string v2, "text_color"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mRelay_top:Landroid/widget/RelativeLayout;

    const-string v2, "text_bg"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const-string v1, "text_right"

    .line 280
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 281
    invoke-static {v1}, Lcom/jzb/qipaisdk/AppUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mTv_right:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mTv_right:Landroid/widget/TextView;

    const-string v2, "text_right"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mTv_right:Landroid/widget/TextView;

    const-string v2, "text_right_color"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "text_right_type"

    .line 287
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    iget-object v2, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mTv_right:Landroid/widget/TextView;

    new-instance v3, Lcom/jzb/qipaisdk/UpdateListActivity$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/jzb/qipaisdk/UpdateListActivity$3;-><init>(Lcom/jzb/qipaisdk/UpdateListActivity;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method public goNext3()V
    .locals 5

    .line 335
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->stringMap:Ljava/util/Map;

    const-string v1, "banner"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/jzb/qipaisdk/AppUtils;->parseKeyAndValueToMapList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->banner_list:Ljava/util/ArrayList;

    .line 336
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->banner_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mBannerVp:Lcom/jzb/qipaisdk/viewpager/LooperViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->setVisibility(I)V

    goto/16 :goto_2

    .line 339
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 340
    :goto_0
    iget-object v3, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->banner_list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 341
    iget-object v3, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->banner_list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "banner"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 342
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    :cond_1
    iget-object v2, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mBannerVp:Lcom/jzb/qipaisdk/viewpager/LooperViewPager;

    invoke-virtual {v2, v1}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->setVisibility(I)V

    .line 346
    iget-object v2, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mBannerVp:Lcom/jzb/qipaisdk/viewpager/LooperViewPager;

    new-instance v3, Lcom/jzb/qipaisdk/UpdateListActivity$4;

    sget v4, Lcom/jzb/qipaisdk/R$layout;->z_p_banner_item:I

    invoke-direct {v3, p0, p0, v4, v0}, Lcom/jzb/qipaisdk/UpdateListActivity$4;-><init>(Lcom/jzb/qipaisdk/UpdateListActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mBannerAdapter:Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 377
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mBannerAdapter:Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;

    invoke-virtual {v0}, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->notifyDataSetChanged()V

    .line 379
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mLl_announcement:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mV_line:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->test:Ljava/util/Map;

    const-string v1, "img_gonggao"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "http"

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 383
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mImg_gb:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jzb/qipaisdk/AppUtils;->getImageResourceId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 385
    :cond_2
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mImg_gb:Landroid/widget/ImageView;

    invoke-static {p0, v0, v1}, Lcom/jzb/qipaisdk/AppUtils;->disImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 387
    :goto_1
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mTv_pao:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->test:Ljava/util/Map;

    const-string v2, "text"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :goto_2
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 391
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 392
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 393
    new-instance v0, Lcom/jzb/qipaisdk/DownApkListAdapter;

    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->list:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/jzb/qipaisdk/DownApkListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mDownApkListAdapter:Lcom/jzb/qipaisdk/DownApkListAdapter;

    .line 394
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mDownApkListAdapter:Lcom/jzb/qipaisdk/DownApkListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 395
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mDownApkListAdapter:Lcom/jzb/qipaisdk/DownApkListAdapter;

    invoke-virtual {v0, p0}, Lcom/jzb/qipaisdk/DownApkListAdapter;->setOnReloadListener(Lcom/jzb/qipaisdk/DownApkListAdapter$OnReloadListener;)V

    .line 396
    invoke-static {}, Lcom/lzy/okgo/db/DownloadManager;->getInstance()Lcom/lzy/okgo/db/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/db/DownloadManager;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okserver/OkDownload;->restore(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mDownloadTaskList:Ljava/util/List;

    return-void
.end method

.method public initData()V
    .locals 1

    .line 235
    invoke-static {}, Lcom/lzy/okgo/db/DownloadManager;->getInstance()Lcom/lzy/okgo/db/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/db/DownloadManager;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okserver/OkDownload;->restore(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mDownloadTaskList:Ljava/util/List;

    .line 236
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mDownApkListAdapter:Lcom/jzb/qipaisdk/DownApkListAdapter;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mDownApkListAdapter:Lcom/jzb/qipaisdk/DownApkListAdapter;

    invoke-virtual {v0}, Lcom/jzb/qipaisdk/DownApkListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 1

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->list_path:Ljava/util/ArrayList;

    .line 99
    sget v0, Lcom/jzb/qipaisdk/R$id;->z_p_recyclerview:I

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 100
    sget v0, Lcom/jzb/qipaisdk/R$id;->z_p_img_bg:I

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mImg_bg:Landroid/widget/ImageView;

    .line 101
    sget v0, Lcom/jzb/qipaisdk/R$id;->z_p_img_red_envelope:I

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->img_red_envelope:Landroid/widget/ImageView;

    .line 102
    sget v0, Lcom/jzb/qipaisdk/R$id;->z_p_tv_title:I

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mTv_title:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/jzb/qipaisdk/R$id;->z_p_tv_right:I

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mTv_right:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/jzb/qipaisdk/R$id;->z_p_relay_top:I

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mRelay_top:Landroid/widget/RelativeLayout;

    .line 106
    sget v0, Lcom/jzb/qipaisdk/R$id;->z_p_ll_announcement:I

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mLl_announcement:Landroid/widget/LinearLayout;

    .line 107
    sget v0, Lcom/jzb/qipaisdk/R$id;->z_p_img_gb:I

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mImg_gb:Landroid/widget/ImageView;

    .line 108
    sget v0, Lcom/jzb/qipaisdk/R$id;->z_p_tv_pao:I

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mTv_pao:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/jzb/qipaisdk/R$id;->z_p_v_line:I

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mV_line:Landroid/view/View;

    .line 111
    sget v0, Lcom/jzb/qipaisdk/R$id;->z_p_banner_vp:I

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mBannerVp:Lcom/jzb/qipaisdk/viewpager/LooperViewPager;

    return-void
.end method

.method public onAllTaskEnd()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 126
    invoke-virtual {p0, p1}, Lcom/jzb/qipaisdk/UpdateListActivity;->requestWindowFeature(I)Z

    .line 128
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/UpdateListActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 130
    sget p1, Lcom/jzb/qipaisdk/R$layout;->z_p_activity_update_list:I

    invoke-virtual {p0, p1}, Lcom/jzb/qipaisdk/UpdateListActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/UpdateListActivity;->initView()V

    .line 132
    invoke-static {}, Lcom/lzy/okserver/OkDownload;->getInstance()Lcom/lzy/okserver/OkDownload;

    move-result-object p1

    iput-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->okDownload:Lcom/lzy/okserver/OkDownload;

    .line 133
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->okDownload:Lcom/lzy/okserver/OkDownload;

    invoke-virtual {p1, p0}, Lcom/lzy/okserver/OkDownload;->addOnAllTaskEndListener(Lcom/lzy/okserver/task/XExecutor$OnAllTaskEndListener;)V

    .line 135
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/UpdateListActivity;->requestData()V

    .line 136
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->okDownload:Lcom/lzy/okserver/OkDownload;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/haocai/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lzy/okserver/OkDownload;->setFolder(Ljava/lang/String;)Lcom/lzy/okserver/OkDownload;

    .line 137
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->okDownload:Lcom/lzy/okserver/OkDownload;

    invoke-virtual {p1}, Lcom/lzy/okserver/OkDownload;->getThreadPool()Lcom/lzy/okserver/download/DownloadThreadPool;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/lzy/okserver/download/DownloadThreadPool;->setCorePoolSize(I)V

    .line 138
    sget p1, Lcom/jzb/qipaisdk/R$id;->z_p_root:I

    invoke-virtual {p0, p1}, Lcom/jzb/qipaisdk/UpdateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->_root:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 140
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 141
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 142
    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->img_red_envelope:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, p1}, Landroid/widget/ImageView;->measure(II)V

    .line 143
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->img_red_envelope:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mMeasuredWidth:I

    .line 144
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->img_red_envelope:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->mMeasuredHeight:I

    .line 146
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->img_red_envelope:Landroid/widget/ImageView;

    new-instance v0, Lcom/jzb/qipaisdk/UpdateListActivity$1;

    invoke-direct {v0, p0}, Lcom/jzb/qipaisdk/UpdateListActivity$1;-><init>(Lcom/jzb/qipaisdk/UpdateListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/jzb/qipaisdk/UpdateListActivity$2;

    invoke-direct {v0, p0}, Lcom/jzb/qipaisdk/UpdateListActivity$2;-><init>(Lcom/jzb/qipaisdk/UpdateListActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/jzb/qipaisdk/UpdateListActivity;->exitApp()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/UpdateListActivity;->initData()V

    return-void
.end method

.method public requestData()V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/UpdateListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "json"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->json:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->json:Ljava/lang/String;

    invoke-static {v0}, Lcom/jzb/qipaisdk/AppUtils;->parseKeyAndValueToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity;->stringMap:Ljava/util/Map;

    .line 118
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/UpdateListActivity;->goNext()V

    return-void
.end method
