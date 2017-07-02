.class final Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
.super Ljava/lang/ref/WeakReference;


# instance fields
.field private final referenced:Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->referenced:Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/logging/impl/WeakHashtable$2;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)V

    return-void
.end method

.method static access$0(Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;)Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->getReferenced()Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    move-result-object v0

    return-object v0
.end method

.method private getReferenced()Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->referenced:Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    return-object v0
.end method
