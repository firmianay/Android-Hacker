.class public Lcom/netease/nr/biz/pc/b/ah;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/ah;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/y;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method
