.class public Lcom/jzb/qipaisdk/viewpager/LooperViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "LooperViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;
    }
.end annotation


# instance fields
.field private POST_DELAYED_TIME:I

.field private adapter:Landroid/support/v4/view/PagerAdapter;

.field private isLoop:Z

.field private isNotify:Z

.field private loopAdapter:Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xfa0

    .line 27
    iput p1, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->POST_DELAYED_TIME:I

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->isLoop:Z

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->isNotify:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jzb/qipaisdk/viewpager/LooperViewPager;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->isNotify:Z

    return p0
.end method

.method static synthetic access$002(Lcom/jzb/qipaisdk/viewpager/LooperViewPager;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->isNotify:Z

    return p1
.end method

.method private startLoop()V
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->stopLoop()V

    .line 96
    iget v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->POST_DELAYED_TIME:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopLoop()V
    .locals 0

    .line 100
    invoke-virtual {p0, p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->stopLoop()V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 142
    :cond_1
    iget-boolean v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->isLoop:Z

    if-eqz v0, :cond_2

    .line 143
    invoke-direct {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->startLoop()V

    .line 146
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->adapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method public getLoopAdapter()Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->loopAdapter:Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;

    return-object v0
.end method

.method public getLoopCurrentItem()I
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->adapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    rem-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoop()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->isLoop:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->isNotify:Z

    .line 62
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->loopAdapter:Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;

    invoke-virtual {v0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;->notifyDataSetChanged()V

    .line 63
    iget-boolean v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->isLoop:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->stopLoop()V

    .line 65
    invoke-direct {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->startLoop()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 125
    iget-boolean v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->isLoop:Z

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->setCurrentItem(I)V

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->startLoop()V

    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    new-instance v0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;-><init>(Lcom/jzb/qipaisdk/viewpager/LooperViewPager;Landroid/support/v4/view/PagerAdapter;)V

    iput-object v0, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->loopAdapter:Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;

    .line 42
    iput-object p1, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->adapter:Landroid/support/v4/view/PagerAdapter;

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->loopAdapter:Lcom/jzb/qipaisdk/viewpager/LooperViewPager$LoopPagerAdapter;

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 45
    invoke-direct {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->startLoop()V

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->isLoop:Z

    if-eqz p1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->startLoop()V

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->startLoop()V

    :goto_0
    return-void
.end method

.method public setLoopTime(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/jzb/qipaisdk/viewpager/LooperViewPager;->POST_DELAYED_TIME:I

    return-void
.end method
