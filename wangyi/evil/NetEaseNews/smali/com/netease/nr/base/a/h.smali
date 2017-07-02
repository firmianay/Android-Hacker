.class Lcom/netease/nr/base/a/h;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/a/f;


# direct methods
.method private constructor <init>(Lcom/netease/nr/base/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/a/h;->a:Lcom/netease/nr/base/a/f;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/base/a/f;Lcom/netease/nr/base/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/a/h;-><init>(Lcom/netease/nr/base/a/f;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/a/h;->a:Lcom/netease/nr/base/a/f;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/f;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/a/h;->a:Lcom/netease/nr/base/a/f;

    invoke-virtual {v0}, Lcom/netease/nr/base/a/f;->notifyDataSetInvalidated()V

    return-void
.end method
