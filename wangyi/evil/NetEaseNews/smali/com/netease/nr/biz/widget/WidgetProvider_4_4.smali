.class public Lcom/netease/nr/biz/widget/WidgetProvider_4_4;
.super Landroid/appwidget/AppWidgetProvider;


# static fields
.field private static final a:Landroid/content/ComponentName;


# instance fields
.field private b:[I

.field private c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.netease.newsreader.activity"

    const-string v2, "com.netease.newsreader.appwidget.WidgetProvider_4_4"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/nr/biz/widget/WidgetProvider_4_4;->a:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x3

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/nr/biz/widget/WidgetProvider_4_4;->b:[I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.netease.newsreader.activity.intent.action.APP_WIDGET_PREV_4_4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.netease.newsreader.activity.intent.action.APP_WIDGET_NEXT_4_4"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.netease.newsreader.activity.intent.action.APP_WIDGET_REFRESH_4_4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/netease/nr/biz/widget/WidgetProvider_4_4;->c:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c02a2
        0x7f0c02a3
        0x7f0c029d
    .end array-data
.end method

.method private a(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/widget/WidgetProvider_4_4;->c:[Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/widget/WidgetProvider_4_4;->b:[I

    const-class v2, Lcom/netease/nr/biz/widget/WidgetProvider_4_4;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/netease/nr/biz/widget/a;->a(Landroid/content/Context;Landroid/widget/RemoteViews;[Ljava/lang/String;[ILjava/lang/Class;)V

    return-void
.end method

.method private a(Landroid/content/Context;[I)V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300f2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f0c02a0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0c02a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0, p1, v0}, Lcom/netease/nr/biz/widget/WidgetProvider_4_4;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/nr/biz/widget/WidgetProvider_4_4;->a(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private a(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 2

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/netease/nr/biz/widget/WidgetProvider_4_4;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netease.newsreader.appwidget.service.IMM_UPDATE_SERVICE_4_4"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/netease/nr/biz/widget/WidgetProvider_4_4;->a(Landroid/content/Context;[I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netease.newsreader.appwidget.service.IMM_UPDATE_SERVICE_4_4"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
