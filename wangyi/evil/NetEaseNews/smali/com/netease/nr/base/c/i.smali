.class public Lcom/netease/nr/base/c/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/netease/nr/base/c/i;


# instance fields
.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:Landroid/graphics/Typeface;

.field private e:Landroid/graphics/Typeface;

.field private f:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/c/i;->f:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static a()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v0, v0, Lcom/netease/nr/base/c/i;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    sget-object v1, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v1, v1, Lcom/netease/nr/base/c/i;->b:Ljava/io/File;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/nr/base/c/i;->d:Landroid/graphics/Typeface;

    :goto_0
    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v0, v0, Lcom/netease/nr/base/c/i;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    sget-object v1, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v1, v1, Lcom/netease/nr/base/c/i;->c:Ljava/io/File;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/nr/base/c/i;->e:Landroid/graphics/Typeface;

    :goto_1
    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v0, v0, Lcom/netease/nr/base/c/i;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/netease/nr/base/c/i;->a(Landroid/widget/TextView;Z)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iput-object v2, v0, Lcom/netease/nr/base/c/i;->d:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iput-object v2, v0, Lcom/netease/nr/base/c/i;->e:Landroid/graphics/Typeface;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/base/c/i;

    invoke-direct {v0}, Lcom/netease/nr/base/c/i;-><init>()V

    sput-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/netease/nr/base/b/a;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "regular.ttf"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/netease/nr/base/c/i;->b:Ljava/io/File;

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "bold.ttf"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/netease/nr/base/c/i;->c:Ljava/io/File;

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v0, v0, Lcom/netease/nr/base/c/i;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/nr/base/c/i;->a()V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v0, v0, Lcom/netease/nr/base/c/i;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/nr/base/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v0, v0, Lcom/netease/nr/base/c/i;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/netease/nr/base/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v0, v0, Lcom/netease/nr/base/c/i;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "font_using"

    invoke-static {p0, v0, p1}, Lcom/netease/util/g/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/netease/nr/base/c/i;->a()V

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netease/nr/base/c/i;->a(Landroid/widget/TextView;Z)V

    return-void
.end method

.method private static a(Landroid/widget/TextView;Z)V
    .locals 2

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/netease/nr/base/view/bt;

    invoke-interface {v0}, Lcom/netease/nr/base/view/bt;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v1, v1, Lcom/netease/nr/base/c/i;->e:Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v0, v0, Lcom/netease/nr/base/c/i;->e:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v1, v1, Lcom/netease/nr/base/c/i;->d:Landroid/graphics/Typeface;

    if-eqz v1, :cond_3

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v0, v0, Lcom/netease/nr/base/c/i;->d:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/netease/nr/base/view/bt;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/nr/base/b/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/netease/util/c/a;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v0, p1}, Lcom/netease/util/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v0, v0, Lcom/netease/nr/base/c/i;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/c/a;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v0, v0, Lcom/netease/nr/base/c/i;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/c/a;->b(Ljava/lang/String;)V

    const-string v0, "font_using"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netease/util/g/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/nr/base/c/i;->a()V

    goto :goto_0
.end method

.method public static b(Landroid/widget/TextView;)V
    .locals 2

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v0, v0, Lcom/netease/nr/base/c/i;->f:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static c(Landroid/widget/TextView;)V
    .locals 1

    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netease/nr/base/c/i;->a:Lcom/netease/nr/base/c/i;

    iget-object v0, v0, Lcom/netease/nr/base/c/i;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
