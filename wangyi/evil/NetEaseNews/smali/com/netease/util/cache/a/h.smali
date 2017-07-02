.class public final Lcom/netease/util/cache/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/netease/util/cache/a/b;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[Ljava/io/File;

.field private final f:[J


# direct methods
.method private constructor <init>(Lcom/netease/util/cache/a/b;Ljava/lang/String;J[Ljava/io/InputStream;[Ljava/io/File;[J)V
    .locals 0

    iput-object p1, p0, Lcom/netease/util/cache/a/h;->a:Lcom/netease/util/cache/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/util/cache/a/h;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/netease/util/cache/a/h;->c:J

    iput-object p5, p0, Lcom/netease/util/cache/a/h;->d:[Ljava/io/InputStream;

    iput-object p6, p0, Lcom/netease/util/cache/a/h;->e:[Ljava/io/File;

    iput-object p7, p0, Lcom/netease/util/cache/a/h;->f:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/util/cache/a/b;Ljava/lang/String;J[Ljava/io/InputStream;[Ljava/io/File;[JLcom/netease/util/cache/a/c;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/netease/util/cache/a/h;-><init>(Lcom/netease/util/cache/a/b;Ljava/lang/String;J[Ljava/io/InputStream;[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/a/h;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/a/h;->e:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/util/cache/a/h;->a(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/cache/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    iget-object v1, p0, Lcom/netease/util/cache/a/h;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/netease/util/cache/a/i;->a(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
