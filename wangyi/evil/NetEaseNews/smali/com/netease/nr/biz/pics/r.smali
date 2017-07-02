.class Lcom/netease/nr/biz/pics/r;
.super Lcom/netease/util/fragment/z;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/util/fragment/z;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/netease/nr/biz/pics/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nr/biz/pics/r;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/nr/biz/pics/r;->c:Ljava/lang/String;

    iput p5, p0, Lcom/netease/nr/biz/pics/r;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 4

    iget v0, p0, Lcom/netease/nr/biz/pics/r;->d:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/r;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pics/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/r;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/pics/r;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/nr/biz/pics/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/r;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/pics/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pics/r;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/pics/r;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/nr/biz/pics/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/nr/biz/pics/r;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
