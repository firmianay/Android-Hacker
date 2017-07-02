.class Lcom/netease/nr/biz/fb/o;
.super Landroid/widget/SimpleCursorAdapter;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/fb/FeedBackList;

.field private b:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/fb/FeedBackList;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/netease/util/j/a;)V
    .locals 6

    iput-object p1, p0, Lcom/netease/nr/biz/fb/o;->a:Lcom/netease/nr/biz/fb/FeedBackList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object p7, p0, Lcom/netease/nr/biz/fb/o;->b:Lcom/netease/util/j/a;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    const v6, 0x7f07012b

    const/4 v5, 0x4

    const v0, 0x7f0c0099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/biz/fb/o;->b:Lcom/netease/util/j/a;

    const v2, 0x7f070065

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/o;->a:Lcom/netease/nr/biz/fb/FeedBackList;

    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/netease/nr/biz/fb/r;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/nr/biz/fb/o;->b:Lcom/netease/util/j/a;

    invoke-virtual {v1, v0, v6}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c009c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0b0225

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v2, p0, Lcom/netease/nr/biz/fb/o;->b:Lcom/netease/util/j/a;

    invoke-virtual {v2, v0, v6}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netease/nr/biz/fb/o;->a:Lcom/netease/nr/biz/fb/FeedBackList;

    invoke-static {v2}, Lcom/netease/nr/biz/fb/FeedBackList;->a(Lcom/netease/nr/biz/fb/FeedBackList;)Lcom/netease/util/j/a;

    move-result-object v2

    const v3, 0x7f020030

    invoke-virtual {v2, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const/4 v0, 0x5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0200b2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/fb/o;->a:Lcom/netease/nr/biz/fb/FeedBackList;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/FeedBackList;->a(Lcom/netease/nr/biz/fb/FeedBackList;)Lcom/netease/util/j/a;

    move-result-object v0

    const v1, 0x7f020036

    invoke-virtual {v0, p1, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    return-void

    :cond_0
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0200b3

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
