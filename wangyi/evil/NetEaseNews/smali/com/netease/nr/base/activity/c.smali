.class Lcom/netease/nr/base/activity/c;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/activity/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/netease/netstat/command/a;

    iget-object v1, p0, Lcom/netease/nr/base/activity/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/netstat/command/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/netease/netstat/command/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
