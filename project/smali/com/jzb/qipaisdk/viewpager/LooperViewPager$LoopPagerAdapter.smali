.class Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "LooperViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jzb/qipaisdk/viewpager/LooperViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoopPagerAdapter"
.end annotation


# instance fields
.field private adapter:Landroid/support/v4/view/PagerAdapter;

.field final synthetic this$0:Lcom/jzb/qipaisdk/viewpager/LooperViewPager;


# direct methods
.method public constructor <init>(Lcom/jzb/qipaisdk/viewpager/LooperViewPager;Landroid/support/v4/view/PagerAdapter;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;->this$0:Lcom/jzb/qipaisdk/viewpager/LooperViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    rem-int/2addr p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;->this$0:Lcom/jzb/qipaisdk/viewpager/LooperViewPager;

    invoke-static {v0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->access$000(Lcom/jzb/qipaisdk/viewpager/LooperViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object p1, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;->this$0:Lcom/jzb/qipaisdk/viewpager/LooperViewPager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->access$002(Lcom/jzb/qipaisdk/viewpager/LooperViewPager;Z)Z

    const/4 p1, -0x2

    return p1

    .line 197
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    rem-int/2addr p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
