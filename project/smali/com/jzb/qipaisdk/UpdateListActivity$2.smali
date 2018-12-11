.class Lcom/jzb/qipaisdk/UpdateListActivity$2;
.super Ljava/lang/Object;
.source "UpdateListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jzb/qipaisdk/UpdateListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jzb/qipaisdk/UpdateListActivity;


# direct methods
.method constructor <init>(Lcom/jzb/qipaisdk/UpdateListActivity;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$2;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$2;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-static {v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$600(Lcom/jzb/qipaisdk/UpdateListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/jzb/qipaisdk/AppUtils;->tada(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    .line 196
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 197
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
