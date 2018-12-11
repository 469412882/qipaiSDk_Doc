.class public abstract Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "CommonViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/view/PagerAdapter;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput p2, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mLayoutId:I

    .line 40
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mDataList:Ljava/util/List;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    if-nez p3, :cond_0

    .line 56
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mDataList:Ljava/util/List;

    goto :goto_0

    .line 58
    :cond_0
    iput-object p3, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mDataList:Ljava/util/List;

    .line 60
    :goto_0
    iput p2, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mLayoutId:I

    .line 61
    iput-object p1, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected abstract convert(Landroid/view/View;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    iget-object p1, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    return-object v0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->convert(Landroid/view/View;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public resetDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget-object v0, p0, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    invoke-virtual {p0}, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
