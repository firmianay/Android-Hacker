.class Lcom/netease/nr/tablet/main/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/tablet/main/b;


# direct methods
.method constructor <init>(Lcom/netease/nr/tablet/main/b;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/tablet/main/c;->a:Lcom/netease/nr/tablet/main/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/tablet/main/c;->a:Lcom/netease/nr/tablet/main/b;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/tablet/main/MainActivity;

    invoke-virtual {v0}, Lcom/netease/nr/tablet/main/MainActivity;->i()V

    return-void
.end method
