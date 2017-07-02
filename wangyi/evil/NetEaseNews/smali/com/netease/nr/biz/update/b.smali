.class public Lcom/netease/nr/biz/update/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/update/AppUpdateService;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/update/AppUpdateService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/netease/nr/biz/update/d;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/update/d;-><init>(Lcom/netease/nr/biz/update/b;)V

    iput-object v0, p0, Lcom/netease/nr/biz/update/b;->f:Landroid/os/Handler;

    iput-object p3, p0, Lcom/netease/nr/biz/update/b;->d:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/netease/nr/biz/update/AppUpdateService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/update/b;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/nr/biz/update/b;->e:Landroid/content/Context;

    sget-object v0, Lcom/netease/nr/base/b/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/nr/biz/update/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/update/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/update/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netease/util/c/a;->b(Ljava/io/File;)Z

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/update/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/update/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/update/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/update/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/update/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/biz/update/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const v6, 0x7f0b0082

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netease/nr/base/b/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    iget-object v3, p0, Lcom/netease/nr/biz/update/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/nr/biz/update/AppUpdateService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    iget-object v2, p0, Lcom/netease/nr/biz/update/b;->e:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/nr/biz/update/AppUpdateService;->a(Lcom/netease/nr/biz/update/AppUpdateService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    const v2, 0x7f0300df

    const v3, 0x7f020171

    iget-object v4, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-virtual {v4, v6}, Lcom/netease/nr/biz/update/AppUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v1, v2, v3, v4, v5}, Lcom/netease/nr/biz/update/AppUpdateService;->a(Lcom/netease/nr/biz/update/AppUpdateService;IILjava/lang/String;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-static {v1}, Lcom/netease/nr/biz/update/AppUpdateService;->e(Lcom/netease/nr/biz/update/AppUpdateService;)Landroid/widget/RemoteViews;

    move-result-object v1

    const v2, 0x7f0c0275

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-static {v1}, Lcom/netease/nr/biz/update/AppUpdateService;->e(Lcom/netease/nr/biz/update/AppUpdateService;)Landroid/widget/RemoteViews;

    move-result-object v1

    const v2, 0x7f0c0276

    invoke-virtual {v1, v2, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-static {v1}, Lcom/netease/nr/biz/update/AppUpdateService;->e(Lcom/netease/nr/biz/update/AppUpdateService;)Landroid/widget/RemoteViews;

    move-result-object v1

    const v2, 0x7f0c0277

    iget-object v3, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-virtual {v3, v6}, Lcom/netease/nr/biz/update/AppUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/biz/update/b;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/update/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nr/biz/main/MainActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    iget-object v2, p0, Lcom/netease/nr/biz/update/b;->e:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v5, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/biz/update/AppUpdateService;->a(Lcom/netease/nr/biz/update/AppUpdateService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    const v1, 0x7f0300e0

    const v2, 0x7f02016f

    iget-object v3, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Lcom/netease/nr/biz/update/AppUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/nr/biz/update/AppUpdateService;->a(Lcom/netease/nr/biz/update/AppUpdateService;IILjava/lang/String;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-static {v0}, Lcom/netease/nr/biz/update/AppUpdateService;->e(Lcom/netease/nr/biz/update/AppUpdateService;)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f0c027a

    const/16 v2, 0x64

    invoke-virtual {p3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-static {v0}, Lcom/netease/nr/biz/update/AppUpdateService;->e(Lcom/netease/nr/biz/update/AppUpdateService;)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f0c0278

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-static {v0}, Lcom/netease/nr/biz/update/AppUpdateService;->e(Lcom/netease/nr/biz/update/AppUpdateService;)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f0c0279

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/biz/update/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/update/b;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/update/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/update/b;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/update/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/update/b;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseApplication;->k()Lcom/netease/util/b/a;

    move-result-object v1

    new-instance v2, Lcom/netease/nr/biz/update/c;

    invoke-direct {v2, p0, v1}, Lcom/netease/nr/biz/update/c;-><init>(Lcom/netease/nr/biz/update/b;Lcom/netease/util/b/a;)V

    invoke-virtual {v1, v2}, Lcom/netease/util/b/a;->a(Lcom/netease/util/b/d;)V

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseApplication;->k()Lcom/netease/util/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/update/b;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netease/nr/biz/update/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/update/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
