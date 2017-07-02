.class public Lcom/netease/nr/biz/pics/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;
.implements Lcom/netease/nr/base/a/d;


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:[I

.field public final c:Lcom/netease/nr/base/c/a/l;

.field private d:Landroid/content/Context;

.field private e:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "photo_clientcover_new"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photo_setname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo_replynum"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_replynum"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_replynum"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/netease/nr/biz/pics/o;->a:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/o;->b:[I

    iput-object p1, p0, Lcom/netease/nr/biz/pics/o;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/nr/base/c/a/l;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/o;->c:Lcom/netease/nr/base/c/a/l;

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pics/o;->e:Lcom/netease/util/j/a;

    return-void

    :array_0
    .array-data 4
        0x7f0c01d0
        0x7f0c01d1
        0x7f0c01d2
        0x7f0c015b
        0x7f0c015d
    .end array-data
.end method

.method private a(Landroid/view/View;Landroid/database/Cursor;ILcom/netease/nr/base/c/a/l;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/netease/nr/biz/pics/o;->e:Lcom/netease/util/j/a;

    const v2, 0x7f0700f3

    invoke-virtual {v0, p1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/netease/nr/biz/pics/o;->e:Lcom/netease/util/j/a;

    const v2, 0x7f0201f5

    invoke-virtual {v0, p1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    move v0, v1

    goto :goto_0

    :sswitch_2
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/netease/nr/base/view/FitImageView;

    iget-object v3, p0, Lcom/netease/nr/biz/pics/o;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/netease/nr/base/c/a/l;->b(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/FitImageView;->a(F)V

    check-cast p1, Lcom/netease/nr/base/view/FitImageView;

    invoke-virtual {p1, p4, v2}, Lcom/netease/nr/base/view/FitImageView;->a(Lcom/netease/util/c/b;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pics/o;->e:Lcom/netease/util/j/a;

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f07000c

    invoke-virtual {v0, p1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    move v0, v1

    goto :goto_0

    :sswitch_4
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u8ddf\u8d34"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0c015b -> :sswitch_1
        0x7f0c015d -> :sswitch_0
        0x7f0c01d0 -> :sswitch_2
        0x7f0c01d1 -> :sswitch_3
        0x7f0c01d2 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pics/o;->c:Lcom/netease/nr/base/c/a/l;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/nr/biz/pics/o;->a(Landroid/view/View;Landroid/database/Cursor;ILcom/netease/nr/base/c/a/l;)Z

    move-result v0

    return v0
.end method
