.class public Lcom/netease/ad/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f;->c()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ad/h/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/netease/ad/h/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/h/a;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, Lcom/netease/ad/h/a;->a:Landroid/content/Context;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d"

    const/16 v2, 0x258

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Lcom/netease/ad/c/b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/netease/ad/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v1, Lcom/netease/ad/h/b;

    invoke-direct {v1, p0}, Lcom/netease/ad/h/b;-><init>(Lcom/netease/ad/h/a;)V

    invoke-virtual {v0, v1}, Lcom/netease/ad/c/b;->a(Lcom/netease/ad/c/e;)V

    return-void
.end method
