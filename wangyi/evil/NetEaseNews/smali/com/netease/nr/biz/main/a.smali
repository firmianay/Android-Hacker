.class Lcom/netease/nr/biz/main/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/main/a;->a:Lcom/netease/nr/biz/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/main/a;->a:Lcom/netease/nr/biz/main/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/biz/main/MainActivity;->a(Lcom/netease/nr/biz/main/MainActivity;Z)Z

    return-void
.end method
