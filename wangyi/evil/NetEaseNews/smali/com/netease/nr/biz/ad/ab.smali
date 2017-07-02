.class Lcom/netease/nr/biz/ad/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/ad/z;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/ad/z;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/ad/ab;->a:Lcom/netease/nr/biz/ad/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/ad/ab;->a:Lcom/netease/nr/biz/ad/z;

    iget-object v0, v0, Lcom/netease/nr/biz/ad/z;->a:Lcom/netease/nr/biz/ad/x;

    invoke-static {v0, p2}, Lcom/netease/nr/biz/ad/x;->a(Lcom/netease/nr/biz/ad/x;Z)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/ad/ab;->a:Lcom/netease/nr/biz/ad/z;

    iget-object v0, v0, Lcom/netease/nr/biz/ad/z;->a:Lcom/netease/nr/biz/ad/x;

    invoke-static {v0}, Lcom/netease/nr/biz/ad/x;->e(Lcom/netease/nr/biz/ad/x;)V

    :cond_0
    return-void
.end method
