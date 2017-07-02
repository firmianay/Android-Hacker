.class Lcom/netease/nr/biz/news/a/c/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/a/c/b/c;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/a/c/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/c/b/d;->a:Lcom/netease/nr/biz/news/a/c/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/b/d;->a:Lcom/netease/nr/biz/news/a/c/b/c;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/b/c;->a(Lcom/netease/nr/biz/news/a/c/b/c;)Lcom/netease/nr/biz/news/a/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/b/a;->getGroupCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-eq p1, v0, :cond_0

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/c/b/d;->a:Lcom/netease/nr/biz/news/a/c/b/c;

    invoke-static {v2}, Lcom/netease/nr/biz/news/a/c/b/c;->b(Lcom/netease/nr/biz/news/a/c/b/c;)Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
