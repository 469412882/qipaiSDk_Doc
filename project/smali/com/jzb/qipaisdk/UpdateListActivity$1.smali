.class Lcom/jzb/qipaisdk/UpdateListActivity$1;
.super Ljava/lang/Object;
.source "UpdateListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 146
    iput-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 179
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    float-to-int p2, p2

    .line 182
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-static {v1}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$200(Lcom/jzb/qipaisdk/UpdateListActivity;)I

    move-result v1

    sub-int v1, p1, v1

    iget-object v1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-static {v1}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$400(Lcom/jzb/qipaisdk/UpdateListActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$802(Lcom/jzb/qipaisdk/UpdateListActivity;I)I

    .line 183
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-static {v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$100(Lcom/jzb/qipaisdk/UpdateListActivity;)I

    move-result v0

    sub-int v0, p2, v0

    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-static {v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$300(Lcom/jzb/qipaisdk/UpdateListActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$902(Lcom/jzb/qipaisdk/UpdateListActivity;I)I

    goto/16 :goto_0

    .line 164
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    float-to-int p2, p2

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-wide v2, v2, Lcom/jzb/qipaisdk/UpdateListActivity;->startTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x64

    cmp-long v2, v4, v0

    if-gez v2, :cond_1

    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-static {v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$300(Lcom/jzb/qipaisdk/UpdateListActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v0, 0x14

    if-ge p2, v0, :cond_1

    iget-object p2, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-static {p2}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$400(Lcom/jzb/qipaisdk/UpdateListActivity;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v0, :cond_1

    .line 167
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object p1, p1, Lcom/jzb/qipaisdk/UpdateListActivity;->test:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 168
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    const-class v0, Lcom/jzb/qipaisdk/WebViewActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "url"

    .line 169
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/UpdateListActivity;->test:Ljava/util/Map;

    const-string v1, "img_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "packName"

    .line 170
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/UpdateListActivity;->test:Ljava/util/Map;

    const-string v1, "packname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "img_bg_url"

    .line 171
    iget-object v0, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object v0, v0, Lcom/jzb/qipaisdk/UpdateListActivity;->test:Ljava/util/Map;

    const-string v1, "img_bg_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object p2, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-virtual {p2, p1}, Lcom/jzb/qipaisdk/UpdateListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    :pswitch_2
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-static {p1}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$000(Lcom/jzb/qipaisdk/UpdateListActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$102(Lcom/jzb/qipaisdk/UpdateListActivity;I)I

    .line 154
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$202(Lcom/jzb/qipaisdk/UpdateListActivity;I)I

    .line 155
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$002(Lcom/jzb/qipaisdk/UpdateListActivity;Z)Z

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$302(Lcom/jzb/qipaisdk/UpdateListActivity;I)I

    .line 158
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$402(Lcom/jzb/qipaisdk/UpdateListActivity;I)I

    .line 159
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object p2, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-static {p2}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$600(Lcom/jzb/qipaisdk/UpdateListActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result p2

    invoke-static {p1, p2}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$502(Lcom/jzb/qipaisdk/UpdateListActivity;I)I

    .line 160
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object p2, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-static {p2}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$600(Lcom/jzb/qipaisdk/UpdateListActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    invoke-static {p1, p2}, Lcom/jzb/qipaisdk/UpdateListActivity;->access$702(Lcom/jzb/qipaisdk/UpdateListActivity;I)I

    .line 161
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/jzb/qipaisdk/UpdateListActivity;->startTime:J

    .line 188
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jzb/qipaisdk/UpdateListActivity$1;->this$0:Lcom/jzb/qipaisdk/UpdateListActivity;

    iget-object p1, p1, Lcom/jzb/qipaisdk/UpdateListActivity;->_root:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
