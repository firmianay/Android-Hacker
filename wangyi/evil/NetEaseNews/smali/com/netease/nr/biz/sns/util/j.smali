.class Lcom/netease/nr/biz/sns/util/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/weibo/sdk/android/c;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/sns/util/h;


# direct methods
.method private constructor <init>(Lcom/netease/nr/biz/sns/util/h;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/j;->a:Lcom/netease/nr/biz/sns/util/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/sns/util/h;Lcom/netease/nr/biz/sns/util/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/sns/util/j;-><init>(Lcom/netease/nr/biz/sns/util/h;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/j;->a:Lcom/netease/nr/biz/sns/util/h;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/h;->b(Lcom/netease/nr/biz/sns/util/h;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/j;->a:Lcom/netease/nr/biz/sns/util/h;

    invoke-static {v1}, Lcom/netease/nr/biz/sns/util/h;->b(Lcom/netease/nr/biz/sns/util/h;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b0079

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/j;->a:Lcom/netease/nr/biz/sns/util/h;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/h;->a(Lcom/netease/nr/biz/sns/util/h;)Lcom/netease/nr/biz/sns/util/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/j;->a:Lcom/netease/nr/biz/sns/util/h;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/h;->a(Lcom/netease/nr/biz/sns/util/h;)Lcom/netease/nr/biz/sns/util/k;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/nr/biz/sns/util/k;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/j;->a:Lcom/netease/nr/biz/sns/util/h;

    new-instance v1, Lcom/netease/nr/biz/sns/util/k;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/j;->a:Lcom/netease/nr/biz/sns/util/h;

    iget-object v3, p0, Lcom/netease/nr/biz/sns/util/j;->a:Lcom/netease/nr/biz/sns/util/h;

    invoke-static {v3}, Lcom/netease/nr/biz/sns/util/h;->b(Lcom/netease/nr/biz/sns/util/h;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/nr/biz/sns/util/k;-><init>(Lcom/netease/nr/biz/sns/util/h;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/netease/nr/biz/sns/util/h;->a(Lcom/netease/nr/biz/sns/util/h;Lcom/netease/nr/biz/sns/util/k;)Lcom/netease/nr/biz/sns/util/k;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/j;->a:Lcom/netease/nr/biz/sns/util/h;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/h;->a(Lcom/netease/nr/biz/sns/util/h;)Lcom/netease/nr/biz/sns/util/k;

    move-result-object v0

    new-array v1, v5, [Landroid/os/Bundle;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/sns/util/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/j;->a:Lcom/netease/nr/biz/sns/util/h;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/h;->b(Lcom/netease/nr/biz/sns/util/h;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b004a

    invoke-static {v0, v1, v4}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;II)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0
.end method

.method public a(Lcom/weibo/sdk/android/d;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/j;->a:Lcom/netease/nr/biz/sns/util/h;

    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/h;->b(Lcom/netease/nr/biz/sns/util/h;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/sns/util/j;->a:Lcom/netease/nr/biz/sns/util/h;

    invoke-static {v1}, Lcom/netease/nr/biz/sns/util/h;->b(Lcom/netease/nr/biz/sns/util/h;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b004a

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    return-void
.end method
