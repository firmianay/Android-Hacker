.class Lcom/netease/nr/biz/pics/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pics/b;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pics/b;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pics/c;->a:Lcom/netease/nr/biz/pics/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/c;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v0}, Lcom/netease/nr/biz/pics/b;->a(Lcom/netease/nr/biz/pics/b;)V

    return-void
.end method
