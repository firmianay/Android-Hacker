.class public Lcom/netease/nr/biz/pics/a;
.super Ljava/lang/Object;


# instance fields
.field public a:[I

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/a;->a:[I

    iput-object p1, p0, Lcom/netease/nr/biz/pics/a;->b:Landroid/content/Context;

    return-void

    :array_0
    .array-data 4
        0x7f0b01be
        0x7f0b01c0
        0x7f0b01bf
        0x7f0b01c2
        0x7f0b01c1
    .end array-data
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "54GI0096"

    goto :goto_0

    :pswitch_1
    const-string v0, "54GJ0096"

    goto :goto_0

    :pswitch_2
    const-string v0, "54GK0096"

    goto :goto_0

    :pswitch_3
    const-string v0, "54GM0096"

    goto :goto_0

    :pswitch_4
    const-string v0, "54GN0096"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b(I)Lcom/netease/util/fragment/i;
    .locals 5

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/a;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pics/a;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "columnId"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "columnChannel"

    const-string v3, "0096"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "columnName"

    iget-object v3, p0, Lcom/netease/nr/biz/pics/a;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/nr/biz/pics/a;->a:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/util/fragment/i;

    const-class v3, Lcom/netease/nr/biz/pics/q;

    invoke-direct {v0, v1, v3, v2}, Lcom/netease/util/fragment/i;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public c(I)Landroid/support/v4/app/Fragment;
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pics/a;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pics/a;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "columnId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "columnChannel"

    const-string v2, "0096"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "columnName"

    iget-object v2, p0, Lcom/netease/nr/biz/pics/a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/nr/biz/pics/a;->a:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/a;->b:Landroid/content/Context;

    const-class v2, Lcom/netease/nr/biz/pics/q;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method
