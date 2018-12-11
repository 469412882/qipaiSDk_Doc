.class Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DownApkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jzb/qipaisdk/DownApkListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "fGoldViewHolder"
.end annotation


# instance fields
.field img_background:Landroid/widget/ImageView;

.field public img_bottom:Landroid/widget/ImageView;

.field public pbProgress:Landroid/widget/ProgressBar;

.field public relay_01:Landroid/widget/RelativeLayout;

.field public relay_pro:Landroid/widget/RelativeLayout;

.field private tag:Ljava/lang/String;

.field private task:Lcom/lzy/okserver/download/DownloadTask;

.field final synthetic this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

.field tv_01:Landroid/widget/TextView;

.field tv_down:Landroid/widget/TextView;

.field tv_name:Landroid/widget/TextView;

.field tv_name2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/jzb/qipaisdk/DownApkListAdapter;Landroid/view/View;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->this$0:Lcom/jzb/qipaisdk/DownApkListAdapter;

    .line 232
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 233
    sget p1, Lcom/jzb/qipaisdk/R$id;->z_p_tv_down:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_down:Landroid/widget/TextView;

    .line 234
    sget p1, Lcom/jzb/qipaisdk/R$id;->z_p_tv_01:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_01:Landroid/widget/TextView;

    .line 235
    sget p1, Lcom/jzb/qipaisdk/R$id;->z_p_tv_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_name:Landroid/widget/TextView;

    .line 236
    sget p1, Lcom/jzb/qipaisdk/R$id;->z_p_tv_name2:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_name2:Landroid/widget/TextView;

    .line 237
    sget p1, Lcom/jzb/qipaisdk/R$id;->z_p_img_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->img_background:Landroid/widget/ImageView;

    .line 239
    sget p1, Lcom/jzb/qipaisdk/R$id;->z_p_pbProgress:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->pbProgress:Landroid/widget/ProgressBar;

    .line 240
    sget p1, Lcom/jzb/qipaisdk/R$id;->z_p_relay_01:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->relay_01:Landroid/widget/RelativeLayout;

    .line 241
    sget p1, Lcom/jzb/qipaisdk/R$id;->z_p_relay_pro:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->relay_pro:Landroid/widget/RelativeLayout;

    .line 245
    sget p1, Lcom/jzb/qipaisdk/R$id;->z_p_img_bottom:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->img_bottom:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public refresh(Lcom/lzy/okgo/model/Progress;)V
    .locals 2

    .line 262
    iget v0, p1, Lcom/lzy/okgo/model/Progress;->status:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 274
    :pswitch_0
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_01:Landroid/widget/TextView;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_01:Landroid/widget/TextView;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 277
    :pswitch_2
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_01:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 271
    :pswitch_3
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tv_01:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :goto_0
    :pswitch_4
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->pbProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 281
    iget-object v0, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->pbProgress:Landroid/widget/ProgressBar;

    iget p1, p1, Lcom/lzy/okgo/model/Progress;->fraction:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTask(Lcom/lzy/okserver/download/DownloadTask;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/jzb/qipaisdk/DownApkListAdapter$fGoldViewHolder;->task:Lcom/lzy/okserver/download/DownloadTask;

    return-void
.end method
