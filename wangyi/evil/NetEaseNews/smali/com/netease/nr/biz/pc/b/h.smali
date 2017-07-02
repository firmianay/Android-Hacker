.class Lcom/netease/nr/biz/pc/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/nr/biz/pc/b/g;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/b/g;I)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/b/h;->b:Lcom/netease/nr/biz/pc/b/g;

    iput p2, p0, Lcom/netease/nr/biz/pc/b/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/h;->b:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->a(Lcom/netease/nr/biz/pc/b/g;)Lcom/netease/nr/biz/pc/b/o;

    move-result-object v0

    iget v1, p0, Lcom/netease/nr/biz/pc/b/h;->a:I

    invoke-interface {v0, v1}, Lcom/netease/nr/biz/pc/b/o;->b(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/h;->b:Lcom/netease/nr/biz/pc/b/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/b/g;->a(Lcom/netease/nr/biz/pc/b/g;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
