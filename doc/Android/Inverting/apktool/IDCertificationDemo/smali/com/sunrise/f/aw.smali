.class public Lcom/sunrise/f/aw;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/sunrise/f/aw;

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Z


# instance fields
.field protected b:Ljava/lang/String;

.field public c:Lcom/sunrise/a/k;

.field private h:Z

.field private i:Lcom/sunrise/f/a;

.field private final j:Lcom/sunrise/h/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sunrise/f/aw;

    invoke-direct {v0}, Lcom/sunrise/f/aw;-><init>()V

    sput-object v0, Lcom/sunrise/f/aw;->a:Lcom/sunrise/f/aw;

    sput-boolean v1, Lcom/sunrise/f/aw;->d:Z

    sput-boolean v1, Lcom/sunrise/f/aw;->e:Z

    sput-boolean v1, Lcom/sunrise/f/aw;->f:Z

    sput-boolean v1, Lcom/sunrise/f/aw;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/sunrise/f/aw;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/sunrise/h/b;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sunrise/f/aw;->h:Z

    sget-object v0, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sunrise/f/aw;->b:Ljava/lang/String;

    new-instance v0, Lcom/sunrise/h/f;

    const/16 v2, 0x400

    invoke-direct {v0, v2}, Lcom/sunrise/h/f;-><init>(I)V

    iput-object v0, p0, Lcom/sunrise/f/aw;->j:Lcom/sunrise/h/f;

    :try_start_0
    iget-boolean v0, p0, Lcom/sunrise/f/aw;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sunrise/f/a;

    invoke-direct {v0}, Lcom/sunrise/f/a;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/aw;->i:Lcom/sunrise/f/a;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/sunrise/f/m;->a:Lcom/sunrise/f/m;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/Character;

    sget-object v1, Lcom/sunrise/f/p;->a:Lcom/sunrise/f/p;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/Byte;

    sget-object v1, Lcom/sunrise/f/ab;->a:Lcom/sunrise/f/ab;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/Short;

    sget-object v1, Lcom/sunrise/f/ab;->a:Lcom/sunrise/f/ab;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/Integer;

    sget-object v1, Lcom/sunrise/f/ab;->a:Lcom/sunrise/f/ab;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/Long;

    sget-object v1, Lcom/sunrise/f/ak;->a:Lcom/sunrise/f/ak;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/Float;

    sget-object v1, Lcom/sunrise/f/aa;->a:Lcom/sunrise/f/aa;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/Double;

    sget-object v1, Lcom/sunrise/f/v;->a:Lcom/sunrise/f/v;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/sunrise/f/k;->a:Lcom/sunrise/f/k;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/math/BigInteger;

    sget-object v1, Lcom/sunrise/f/l;->a:Lcom/sunrise/f/l;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/sunrise/f/bb;->a:Lcom/sunrise/f/bb;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, [B

    sget-object v1, Lcom/sunrise/f/aq;->a:Lcom/sunrise/f/aq;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, [S

    sget-object v1, Lcom/sunrise/f/aq;->a:Lcom/sunrise/f/aq;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, [I

    sget-object v1, Lcom/sunrise/f/aq;->a:Lcom/sunrise/f/aq;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, [J

    sget-object v1, Lcom/sunrise/f/aq;->a:Lcom/sunrise/f/aq;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, [F

    sget-object v1, Lcom/sunrise/f/aq;->a:Lcom/sunrise/f/aq;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, [D

    sget-object v1, Lcom/sunrise/f/aq;->a:Lcom/sunrise/f/aq;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, [Z

    sget-object v1, Lcom/sunrise/f/aq;->a:Lcom/sunrise/f/aq;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, [C

    sget-object v1, Lcom/sunrise/f/aq;->a:Lcom/sunrise/f/aq;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, [Ljava/lang/Object;

    sget-object v1, Lcom/sunrise/f/ao;->a:Lcom/sunrise/f/ao;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/Class;

    sget-object v1, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/util/Currency;

    new-instance v1, Lcom/sunrise/f/am;

    invoke-direct {v1}, Lcom/sunrise/f/am;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/util/TimeZone;

    sget-object v1, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/net/InetAddress;

    sget-object v1, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/net/Inet4Address;

    sget-object v1, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/net/Inet6Address;

    sget-object v1, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/net/InetSocketAddress;

    sget-object v1, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/io/File;

    sget-object v1, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/Appendable;

    sget-object v1, Lcom/sunrise/f/d;->a:Lcom/sunrise/f/d;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/sunrise/f/d;->a:Lcom/sunrise/f/d;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sunrise/f/d;->a:Lcom/sunrise/f/d;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/nio/charset/Charset;

    sget-object v1, Lcom/sunrise/f/bc;->a:Lcom/sunrise/f/bc;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/util/regex/Pattern;

    sget-object v1, Lcom/sunrise/f/bc;->a:Lcom/sunrise/f/bc;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/util/Locale;

    sget-object v1, Lcom/sunrise/f/bc;->a:Lcom/sunrise/f/bc;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/net/URI;

    sget-object v1, Lcom/sunrise/f/bc;->a:Lcom/sunrise/f/bc;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/net/URL;

    sget-object v1, Lcom/sunrise/f/bc;->a:Lcom/sunrise/f/bc;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/util/UUID;

    sget-object v1, Lcom/sunrise/f/bc;->a:Lcom/sunrise/f/bc;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/sunrise/f/f;->a:Lcom/sunrise/f/f;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/sunrise/f/f;->a:Lcom/sunrise/f/f;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v1, Lcom/sunrise/f/f;->a:Lcom/sunrise/f/f;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/sunrise/f/at;->a:Lcom/sunrise/f/at;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v1, Lcom/sunrise/f/f;->a:Lcom/sunrise/f/f;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v1, Lcom/sunrise/f/f;->a:Lcom/sunrise/f/f;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/sunrise/f/at;->a:Lcom/sunrise/f/at;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-class v0, Ljava/lang/ref/SoftReference;

    sget-object v1, Lcom/sunrise/f/at;->a:Lcom/sunrise/f/at;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcom/sunrise/f/aw;->h:Z

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iput-boolean v1, p0, Lcom/sunrise/f/aw;->h:Z

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/Class;Z)Lcom/sunrise/f/ap;
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sunrise/f/aw;->j:Lcom/sunrise/h/f;

    invoke-virtual {v0, p1}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/ap;

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/sunrise/f/g;

    invoke-static {v1, v0}, Lcom/sunrise/h/j;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/sunrise/f/g;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sunrise/f/g;

    invoke-interface {v0}, Lcom/sunrise/f/g;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-virtual {p0, v1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/sunrise/f/aw;->j:Lcom/sunrise/h/f;

    invoke-virtual {v0, p1}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/ap;

    :cond_2
    if-nez v0, :cond_5

    const-class v1, Lcom/sunrise/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-eq v1, v4, :cond_5

    :try_start_1
    const-class v0, Lcom/sunrise/f/g;

    invoke-static {v0, v1}, Lcom/sunrise/h/j;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/sunrise/f/g;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/sunrise/f/g;

    invoke-interface {v0}, Lcom/sunrise/f/g;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-virtual {p0, v1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_4
    iget-object v0, p0, Lcom/sunrise/f/aw;->j:Lcom/sunrise/h/f;

    invoke-virtual {v0, p1}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/ap;

    :cond_5
    if-nez v0, :cond_7

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sunrise/f/al;->a:Lcom/sunrise/f/al;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sunrise/f/aw;->j:Lcom/sunrise/h/f;

    invoke-virtual {v0, p1}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/ap;

    :cond_7
    :goto_3
    return-object v0

    :cond_8
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sunrise/f/aj;->a:Lcom/sunrise/f/aj;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto :goto_2

    :cond_9
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sunrise/f/r;->a:Lcom/sunrise/f/r;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto :goto_2

    :cond_a
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sunrise/f/u;->a:Lcom/sunrise/f/u;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto :goto_2

    :cond_b
    const-class v0, Lcom/sunrise/a/c;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sunrise/f/ac;->a:Lcom/sunrise/f/ac;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto :goto_2

    :cond_c
    const-class v0, Lcom/sunrise/f/ad;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sunrise/f/ae;->a:Lcom/sunrise/f/ae;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto :goto_2

    :cond_d
    const-class v0, Lcom/sunrise/a/i;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto :goto_2

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    sget-object v0, Lcom/sunrise/f/w;->a:Lcom/sunrise/f/w;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto :goto_2

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v1

    new-instance v2, Lcom/sunrise/f/e;

    invoke-direct {v2, v0, v1}, Lcom/sunrise/f/e;-><init>(Ljava/lang/Class;Lcom/sunrise/f/ap;)V

    invoke-virtual {p0, p1, v2}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto/16 :goto_2

    :cond_11
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sunrise/f/aw;->c:Lcom/sunrise/a/k;

    invoke-static {p1, v0, v1}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Ljava/util/Map;Lcom/sunrise/a/k;)Lcom/sunrise/f/av;

    move-result-object v0

    iget v1, v0, Lcom/sunrise/f/av;->f:I

    sget-object v2, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    iget v2, v2, Lcom/sunrise/f/ba;->C:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/sunrise/f/av;->f:I

    new-instance v1, Lcom/sunrise/f/ag;

    invoke-direct {v1, v0}, Lcom/sunrise/f/ag;-><init>(Lcom/sunrise/f/av;)V

    invoke-virtual {p0, p1, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto/16 :goto_2

    :cond_12
    const-class v0, Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto/16 :goto_2

    :cond_13
    const-class v0, Ljava/lang/Appendable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/sunrise/f/d;->a:Lcom/sunrise/f/d;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto/16 :goto_2

    :cond_14
    const-class v0, Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/sunrise/f/bc;->a:Lcom/sunrise/f/bc;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto/16 :goto_2

    :cond_15
    const-class v0, Ljava/util/Enumeration;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/sunrise/f/x;->a:Lcom/sunrise/f/x;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto/16 :goto_2

    :cond_16
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/sunrise/f/n;->a:Lcom/sunrise/f/n;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto/16 :goto_2

    :cond_17
    const-class v0, Ljava/sql/Clob;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/sunrise/f/q;->a:Lcom/sunrise/f/q;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto/16 :goto_2

    :cond_18
    invoke-static {p1}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/sunrise/f/bc;->a:Lcom/sunrise/f/bc;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto/16 :goto_2

    :cond_19
    const-class v0, Ljava/util/Iterator;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto/16 :goto_2

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v0, "java.awt."

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p1}, Lcom/sunrise/f/h;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-boolean v0, Lcom/sunrise/f/aw;->d:Z

    if-nez v0, :cond_1b

    :try_start_2
    const-string v0, "java.awt.Color"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sunrise/f/h;->a:Lcom/sunrise/f/h;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.awt.Font"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sunrise/f/h;->a:Lcom/sunrise/f/h;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.awt.Point"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sunrise/f/h;->a:Lcom/sunrise/f/h;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.awt.Rectangle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sunrise/f/h;->a:Lcom/sunrise/f/h;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1b
    :goto_4
    sget-object v0, Lcom/sunrise/f/h;->a:Lcom/sunrise/f/h;

    goto/16 :goto_3

    :catch_2
    move-exception v0

    sput-boolean v2, Lcom/sunrise/f/aw;->d:Z

    goto :goto_4

    :cond_1c
    sget-boolean v0, Lcom/sunrise/f/aw;->e:Z

    if-nez v0, :cond_1e

    const-string v0, "java.time."

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "java.util.Optional"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    :try_start_3
    const-string v0, "java.time.LocalDateTime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.time.LocalDate"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.time.LocalTime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.time.ZonedDateTime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.time.OffsetDateTime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.time.OffsetTime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.time.ZoneOffset"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.time.ZoneRegion"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.time.Period"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.time.Duration"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.time.Instant"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.util.Optional"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/t;->a:Lcom/sunrise/e/t;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.util.OptionalDouble"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/t;->a:Lcom/sunrise/e/t;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.util.OptionalInt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/t;->a:Lcom/sunrise/e/t;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "java.util.OptionalLong"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/e/t;->a:Lcom/sunrise/e/t;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    iget-object v0, p0, Lcom/sunrise/f/aw;->j:Lcom/sunrise/h/f;

    invoke-virtual {v0, p1}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/ap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v0, :cond_7

    :cond_1e
    :goto_5
    sget-boolean v0, Lcom/sunrise/f/aw;->f:Z

    if-nez v0, :cond_1f

    const-string v0, "oracle.sql."

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :try_start_4
    const-string v0, "oracle.sql.DATE"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/f/u;->a:Lcom/sunrise/f/u;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    const-string v0, "oracle.sql.TIMESTAMP"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Lcom/sunrise/f/u;->a:Lcom/sunrise/f/u;

    invoke-virtual {p0, v0, v4}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    iget-object v0, p0, Lcom/sunrise/f/aw;->j:Lcom/sunrise/h/f;

    invoke-virtual {v0, p1}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/ap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v0, :cond_7

    :cond_1f
    :goto_6
    sget-boolean v0, Lcom/sunrise/f/aw;->g:Z

    if-nez v0, :cond_20

    const-string v0, "springfox.documentation.spring.web.json.Json"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :try_start_5
    const-string v0, "springfox.documentation.spring.web.json.Json"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sunrise/g/a;->a:Lcom/sunrise/g/a;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/f/aw;->a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    iget-object v0, p0, Lcom/sunrise/f/aw;->j:Lcom/sunrise/h/f;

    invoke-virtual {v0, p1}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/ap;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    if-nez v0, :cond_7

    :cond_20
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v4, v1

    move v0, v3

    :goto_8
    if-ge v0, v4, :cond_27

    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "net.sf.cglib.proxy.Factory"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    const-string v6, "org.springframework.cglib.proxy.Factory"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    :cond_21
    move v0, v3

    move v3, v2

    :goto_9
    if-nez v3, :cond_22

    if-eqz v0, :cond_26

    :cond_22
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->b(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto/16 :goto_3

    :catch_3
    move-exception v0

    sput-boolean v2, Lcom/sunrise/f/aw;->e:Z

    goto/16 :goto_5

    :catch_4
    move-exception v0

    sput-boolean v2, Lcom/sunrise/f/aw;->f:Z

    goto :goto_6

    :catch_5
    move-exception v0

    sput-boolean v2, Lcom/sunrise/f/aw;->g:Z

    goto :goto_7

    :cond_23
    const-string v6, "javassist.util.proxy.ProxyObject"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    const-string v6, "org.apache.ibatis.javassist.util.proxy.ProxyObject"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    :cond_24
    move v0, v2

    goto :goto_9

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_26
    if-eqz p2, :cond_6

    invoke-direct {p0, p1}, Lcom/sunrise/f/aw;->b(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/f/aw;->b(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    goto/16 :goto_2

    :cond_27
    move v0, v3

    goto :goto_9
.end method

.method public static a()Lcom/sunrise/f/aw;
    .locals 1

    sget-object v0, Lcom/sunrise/f/aw;->a:Lcom/sunrise/f/aw;

    return-object v0
.end method

.method private final b(Lcom/sunrise/f/av;)Lcom/sunrise/f/ag;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sunrise/f/aw;->i:Lcom/sunrise/f/a;

    invoke-virtual {v0, p1}, Lcom/sunrise/f/a;->a(Lcom/sunrise/f/av;)Lcom/sunrise/f/ag;

    move-result-object v2

    move v0, v1

    :goto_0
    iget-object v3, v2, Lcom/sunrise/f/ag;->b:[Lcom/sunrise/f/y;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, v2, Lcom/sunrise/f/ag;->b:[Lcom/sunrise/f/y;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/sunrise/f/y;->a:Lcom/sunrise/h/c;

    iget-object v3, v3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/sunrise/f/aw;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v3

    instance-of v3, v3, Lcom/sunrise/f/w;

    if-nez v3, :cond_0

    iput-boolean v1, v2, Lcom/sunrise/f/ag;->o:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private final b(Ljava/lang/Class;)Lcom/sunrise/f/ap;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sunrise/f/aw;->c:Lcom/sunrise/a/k;

    invoke-static {p1, v0, v1}, Lcom/sunrise/h/k;->a(Ljava/lang/Class;Ljava/util/Map;Lcom/sunrise/a/k;)Lcom/sunrise/f/av;

    move-result-object v0

    iget-object v1, v0, Lcom/sunrise/f/av;->d:[Lcom/sunrise/h/c;

    array-length v1, v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sunrise/f/aw;->a(Lcom/sunrise/f/av;)Lcom/sunrise/f/ap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/sunrise/f/av;)Lcom/sunrise/f/ap;
    .locals 8

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/sunrise/f/av;->c:Lcom/sunrise/b/d;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/sunrise/b/d;->l()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/Void;

    if-eq v0, v3, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/sunrise/f/ap;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/sunrise/f/ap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    invoke-interface {v2}, Lcom/sunrise/b/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/sunrise/f/aw;->h:Z

    :cond_2
    iget-object v3, p1, Lcom/sunrise/f/av;->a:Ljava/lang/Class;

    iget-object v0, p1, Lcom/sunrise/f/av;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/sunrise/f/ag;

    invoke-direct {v0, p1}, Lcom/sunrise/f/ag;-><init>(Lcom/sunrise/f/av;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sunrise/f/aw;->h:Z

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/sunrise/f/aw;->i:Lcom/sunrise/f/a;

    iget-object v2, v2, Lcom/sunrise/f/a;->a:Lcom/sunrise/h/a;

    invoke-virtual {v2, v3}, Lcom/sunrise/h/a;->a(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const-class v2, Ljava/io/Serializable;

    if-eq v3, v2, :cond_5

    const-class v2, Ljava/lang/Object;

    if-ne v3, v2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunrise/h/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    :cond_7
    if-eqz v0, :cond_b

    iget-object v4, p1, Lcom/sunrise/f/av;->d:[Lcom/sunrise/h/c;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_b

    aget-object v6, v4, v2

    invoke-virtual {v6}, Lcom/sunrise/h/c;->d()Lcom/sunrise/b/b;

    move-result-object v6

    if-nez v6, :cond_9

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    invoke-interface {v6}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sunrise/h/b;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Lcom/sunrise/b/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_a

    invoke-interface {v6}, Lcom/sunrise/b/b;->i()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_a
    move v0, v1

    :cond_b
    if-eqz v0, :cond_c

    :try_start_1
    invoke-direct {p0, p1}, Lcom/sunrise/f/aw;->b(Lcom/sunrise/f/av;)Lcom/sunrise/f/ag;
    :try_end_1
    .catch Ljava/lang/ClassFormatError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-nez v0, :cond_0

    :cond_c
    :goto_2
    new-instance v0, Lcom/sunrise/f/ag;

    invoke-direct {v0, p1}, Lcom/sunrise/f/ag;-><init>(Lcom/sunrise/f/av;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create asm serializer error, class "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public a(Ljava/lang/Class;)Lcom/sunrise/f/ap;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sunrise/f/aw;->a(Ljava/lang/Class;Z)Lcom/sunrise/f/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sunrise/f/aw;->b(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/reflect/Type;Lcom/sunrise/f/ap;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/aw;->j:Lcom/sunrise/h/f;

    invoke-virtual {v0, p1, p2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
