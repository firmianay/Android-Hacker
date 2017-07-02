.class Lcom/netease/nr/biz/g/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/nr/biz/g/p;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/g/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/g/s;->c:Lcom/netease/nr/biz/g/p;

    iput-object p2, p0, Lcom/netease/nr/biz/g/s;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nr/biz/g/s;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/g/s;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/g/s;->c:Lcom/netease/nr/biz/g/p;

    invoke-virtual {v1}, Lcom/netease/nr/biz/g/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/g/s;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/g/s;->c:Lcom/netease/nr/biz/g/p;

    iget-object v3, v3, Lcom/netease/nr/biz/g/p;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/nr/biz/g/c;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
