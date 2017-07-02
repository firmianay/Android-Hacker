.class public Lcom/netease/nr/biz/fb/FeedBackReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const v1, 0x7f020332

    const v0, 0x7f0b0222

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v0, 0x7f0b0000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0b0223

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/netease/nr/biz/fb/r;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/fb/FeedBackReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/fb/FeedBackReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.netease.newsreader.feedback.FEEDBACK_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/fb/q;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/biz/fb/q;-><init>(Lcom/netease/nr/biz/fb/FeedBackReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/netease/nr/biz/fb/q;->start()V

    :cond_0
    return-void
.end method
