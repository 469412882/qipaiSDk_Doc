.class Lcom/jzb/qipaisdk/UpdateListActivity$4;
.super Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;
.source "UpdateListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jzb/qipaisdk/UpdateListActivity;->goNext3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jzb/qipaisdk/UpdateListActivity;


# direct methods
.method constructor <init>(Lcom/jzb/qipaisdk/UpdateListActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/jzb/qipaisdk/viewpager/CommonViewPagerAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 347
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jzb/qipaisdk/UpdateListActivity$4;->convert(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method protected convert(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$4;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 351
    new-instance v0, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/jzb/qipaisdk/UpdateListActivity$4$1;-><init>(Lcom/jzb/qipaisdk/UpdateListActivity$4;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
