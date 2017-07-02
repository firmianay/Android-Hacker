.class public Lcom/netease/nr/biz/news/a/b;
.super Landroid/support/v4/widget/SimpleCursorAdapter;


# instance fields
.field private a:Z

.field private b:Lcom/netease/util/j/a;

.field private c:Z

.field private d:I

.field private e:Landroid/view/LayoutInflater;

.field private f:Lcom/netease/nr/biz/news/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput p2, p0, Lcom/netease/nr/biz/news/a/b;->d:I

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b;->b:Lcom/netease/util/j/a;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/b;->e:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nr/biz/news/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/b;->f:Lcom/netease/nr/biz/news/a/c;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/news/a/b;->a:Z

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/b;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 3

    invoke-super {p0}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/netease/nr/biz/news/a/b;->a:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b;->f:Lcom/netease/nr/biz/news/a/c;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b;->f:Lcom/netease/nr/biz/news/a/c;

    invoke-interface {v2, v0}, Lcom/netease/nr/biz/news/a/c;->a(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/a/b;->a:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget v0, p0, Lcom/netease/nr/biz/news/a/b;->d:I

    const v1, 0x7f03005c

    if-ne v0, v1, :cond_9

    if-nez p2, :cond_8

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/b;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Lcom/netease/nr/biz/news/a/b;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    const v0, 0x7f0c012f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c012e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/a/b;->c:Z

    if-eqz v0, :cond_5

    if-eqz v3, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f030068

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b;->f:Lcom/netease/nr/biz/news/a/c;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/b;->f:Lcom/netease/nr/biz/news/a/c;

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b;->b:Lcom/netease/util/j/a;

    invoke-interface {v0, v1, p1, v2}, Lcom/netease/nr/biz/news/a/c;->a(Landroid/view/View;ILcom/netease/util/j/a;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b;->f:Lcom/netease/nr/biz/news/a/c;

    invoke-interface {v2, p1}, Lcom/netease/nr/biz/news/a/c;->b(I)I

    move-result p1

    :cond_3
    if-nez v0, :cond_7

    invoke-super {p0, p1, v1, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_2
    const v0, 0x7f0c0022

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b;->b:Lcom/netease/util/j/a;

    const v3, 0x7f020030

    invoke-virtual {v2, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :cond_4
    return-object v1

    :cond_5
    if-eqz v2, :cond_6

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    if-nez v3, :cond_2

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/b;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f030067

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto :goto_2

    :cond_8
    move-object v1, p2

    goto :goto_0

    :cond_9
    move-object v1, p2

    goto :goto_1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    invoke-static {p1}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/database/Cursor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/a/b;->c:Z

    invoke-super {p0, p1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
