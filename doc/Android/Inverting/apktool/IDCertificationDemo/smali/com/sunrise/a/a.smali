.class public abstract Lcom/sunrise/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/a/c;
.implements Lcom/sunrise/a/i;


# static fields
.field public static a:Ljava/util/TimeZone;

.field public static b:Ljava/util/Locale;

.field public static c:Ljava/lang/String;

.field static final d:[Lcom/sunrise/f/ax;

.field public static e:Ljava/lang/String;

.field public static f:I

.field public static g:I

.field private static final h:Ljava/lang/ThreadLocal;

.field private static final i:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/sunrise/a/a;->a:Ljava/util/TimeZone;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/sunrise/a/a;->b:Ljava/util/Locale;

    const-string v0, "@type"

    sput-object v0, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    new-array v0, v2, [Lcom/sunrise/f/ax;

    sput-object v0, Lcom/sunrise/a/a;->d:[Lcom/sunrise/f/ax;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lcom/sunrise/a/a;->e:Ljava/lang/String;

    sget-object v0, Lcom/sunrise/d/c;->a:Lcom/sunrise/d/c;

    invoke-virtual {v0}, Lcom/sunrise/d/c;->a()I

    move-result v0

    or-int/2addr v0, v2

    sget-object v1, Lcom/sunrise/d/c;->e:Lcom/sunrise/d/c;

    invoke-virtual {v1}, Lcom/sunrise/d/c;->a()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/sunrise/d/c;->h:Lcom/sunrise/d/c;

    invoke-virtual {v1}, Lcom/sunrise/d/c;->a()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/sunrise/d/c;->c:Lcom/sunrise/d/c;

    invoke-virtual {v1}, Lcom/sunrise/d/c;->a()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/sunrise/d/c;->d:Lcom/sunrise/d/c;

    invoke-virtual {v1}, Lcom/sunrise/d/c;->a()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/sunrise/d/c;->g:Lcom/sunrise/d/c;

    invoke-virtual {v1}, Lcom/sunrise/d/c;->a()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/sunrise/d/c;->j:Lcom/sunrise/d/c;

    invoke-virtual {v1}, Lcom/sunrise/d/c;->a()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/sunrise/d/c;->i:Lcom/sunrise/d/c;

    invoke-virtual {v1}, Lcom/sunrise/d/c;->a()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/sunrise/a/a;->f:I

    sget-object v0, Lcom/sunrise/f/ba;->a:Lcom/sunrise/f/ba;

    invoke-virtual {v0}, Lcom/sunrise/f/ba;->a()I

    move-result v0

    or-int/2addr v0, v2

    sget-object v1, Lcom/sunrise/f/ba;->k:Lcom/sunrise/f/ba;

    invoke-virtual {v1}, Lcom/sunrise/f/ba;->a()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/sunrise/f/ba;->e:Lcom/sunrise/f/ba;

    invoke-virtual {v1}, Lcom/sunrise/f/ba;->a()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/sunrise/f/ba;->l:Lcom/sunrise/f/ba;

    invoke-virtual {v1}, Lcom/sunrise/f/ba;->a()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/sunrise/a/a;->g:I

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sunrise/a/a;->h:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sunrise/a/a;->i:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/sunrise/f/aw;)Ljava/lang/Object;
    .locals 4

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/sunrise/a/a;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/Map;

    new-instance v1, Lcom/sunrise/a/e;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/sunrise/a/e;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/sunrise/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object p0, v1

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/util/Collection;

    new-instance v0, Lcom/sunrise/a/b;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/b;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sunrise/a/b;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object p0, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_6

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Lcom/sunrise/a/b;

    invoke-direct {v0, v2}, Lcom/sunrise/a/b;-><init>(I)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_7

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sunrise/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sunrise/a/b;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move-object p0, v0

    goto/16 :goto_0

    :cond_8
    invoke-static {v0}, Lcom/sunrise/d/j;->a(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v0

    instance-of v1, v0, Lcom/sunrise/f/ag;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/sunrise/f/ag;

    new-instance v2, Lcom/sunrise/a/e;

    invoke-direct {v2}, Lcom/sunrise/a/e;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/sunrise/f/ag;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/sunrise/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    const-string v2, "toJSON error"

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    move-object p0, v2

    goto/16 :goto_0

    :cond_a
    invoke-static {p0}, Lcom/sunrise/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget v0, Lcom/sunrise/a/a;->f:I

    invoke-static {p0, v0}, Lcom/sunrise/a/a;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/sunrise/d/a;

    invoke-static {}, Lcom/sunrise/d/j;->a()Lcom/sunrise/d/j;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1}, Lcom/sunrise/d/a;-><init>(Ljava/lang/String;Lcom/sunrise/d/j;I)V

    invoke-virtual {v1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sunrise/d/a;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/sunrise/d/a;->close()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sunrise/a/a;->d:[Lcom/sunrise/f/ax;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sunrise/f/ba;

    invoke-static {p0, v0, v1}, Lcom/sunrise/a/a;->a(Ljava/lang/Object;[Lcom/sunrise/f/ax;[Lcom/sunrise/f/ba;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Lcom/sunrise/f/aw;[Lcom/sunrise/f/ax;Ljava/lang/String;I[Lcom/sunrise/f/ba;)Ljava/lang/String;
    .locals 5

    new-instance v1, Lcom/sunrise/f/az;

    const/4 v0, 0x0

    invoke-direct {v1, v0, p4, p5}, Lcom/sunrise/f/az;-><init>(Ljava/io/Writer;I[Lcom/sunrise/f/ba;)V

    :try_start_0
    new-instance v2, Lcom/sunrise/f/af;

    invoke-direct {v2, v1, p1}, Lcom/sunrise/f/af;-><init>(Lcom/sunrise/f/az;Lcom/sunrise/f/aw;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p3}, Lcom/sunrise/f/af;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/sunrise/f/ba;->s:Lcom/sunrise/f/ba;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/sunrise/f/af;->a(Lcom/sunrise/f/ba;Z)V

    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p2, v0

    invoke-virtual {v2, v4}, Lcom/sunrise/f/af;->a(Lcom/sunrise/f/ax;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p0}, Lcom/sunrise/f/af;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/sunrise/f/az;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Lcom/sunrise/f/az;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/sunrise/f/az;->close()V

    throw v0
.end method

.method public static varargs a(Ljava/lang/Object;[Lcom/sunrise/f/ax;[Lcom/sunrise/f/ba;)Ljava/lang/String;
    .locals 6

    sget-object v1, Lcom/sunrise/f/aw;->a:Lcom/sunrise/f/aw;

    const/4 v3, 0x0

    sget v4, Lcom/sunrise/a/a;->g:I

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sunrise/a/a;->a(Ljava/lang/Object;Lcom/sunrise/f/aw;[Lcom/sunrise/f/ax;Ljava/lang/String;I[Lcom/sunrise/f/ba;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/sunrise/a/e;
    .locals 2

    invoke-static {p0}, Lcom/sunrise/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/sunrise/a/e;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sunrise/a/e;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/sunrise/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/a/e;

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sunrise/f/aw;->a:Lcom/sunrise/f/aw;

    invoke-static {p0, v0}, Lcom/sunrise/a/a;->a(Ljava/lang/Object;Lcom/sunrise/f/aw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/sunrise/a/b;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/sunrise/d/a;

    invoke-static {}, Lcom/sunrise/d/j;->a()Lcom/sunrise/d/j;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sunrise/d/a;-><init>(Ljava/lang/String;Lcom/sunrise/d/j;)V

    iget-object v2, v1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    invoke-interface {v2}, Lcom/sunrise/d/d;->d()V

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/sunrise/d/a;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_1

    new-instance v0, Lcom/sunrise/a/b;

    invoke-direct {v0}, Lcom/sunrise/a/b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/sunrise/d/a;->b(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Lcom/sunrise/d/a;->c(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v1, Lcom/sunrise/f/az;

    invoke-direct {v1}, Lcom/sunrise/f/az;-><init>()V

    :try_start_0
    new-instance v0, Lcom/sunrise/f/af;

    invoke-direct {v0, v1}, Lcom/sunrise/f/af;-><init>(Lcom/sunrise/f/az;)V

    invoke-virtual {v0, p0}, Lcom/sunrise/f/af;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/sunrise/f/az;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Lcom/sunrise/f/az;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/sunrise/f/az;->close()V

    throw v0
.end method

.method public a(Ljava/lang/Appendable;)V
    .locals 4

    new-instance v1, Lcom/sunrise/f/az;

    invoke-direct {v1}, Lcom/sunrise/f/az;-><init>()V

    :try_start_0
    new-instance v0, Lcom/sunrise/f/af;

    invoke-direct {v0, v1}, Lcom/sunrise/f/af;-><init>(Lcom/sunrise/f/az;)V

    invoke-virtual {v0, p0}, Lcom/sunrise/f/af;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/sunrise/f/az;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/sunrise/f/az;->close()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lcom/sunrise/a/d;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/sunrise/f/az;->close()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sunrise/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
