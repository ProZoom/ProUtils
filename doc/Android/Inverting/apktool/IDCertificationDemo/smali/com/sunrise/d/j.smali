.class public Lcom/sunrise/d/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static b:Lcom/sunrise/d/j;

.field private static i:Z

.field private static j:Z


# instance fields
.field public final c:Lcom/sunrise/d/k;

.field public d:Lcom/sunrise/a/k;

.field protected e:Ljava/lang/ClassLoader;

.field protected f:Lcom/sunrise/e/a;

.field private final g:Lcom/sunrise/h/f;

.field private h:Z

.field private k:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/sunrise/d/j;->b()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sunrise/d/j;->a:[Ljava/lang/String;

    new-instance v0, Lcom/sunrise/d/j;

    invoke-direct {v0}, Lcom/sunrise/d/j;-><init>()V

    sput-object v0, Lcom/sunrise/d/j;->b:Lcom/sunrise/d/j;

    sput-boolean v1, Lcom/sunrise/d/j;->i:Z

    sput-boolean v1, Lcom/sunrise/d/j;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sunrise/d/j;-><init>(Lcom/sunrise/e/a;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private constructor <init>(Lcom/sunrise/e/a;Ljava/lang/ClassLoader;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sunrise/h/f;

    invoke-direct {v0}, Lcom/sunrise/h/f;-><init>()V

    iput-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    sget-boolean v0, Lcom/sunrise/h/b;->b:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sunrise/d/j;->h:Z

    new-instance v0, Lcom/sunrise/d/k;

    const/16 v3, 0x1000

    invoke-direct {v0, v3}, Lcom/sunrise/d/k;-><init>(I)V

    iput-object v0, p0, Lcom/sunrise/d/j;->c:Lcom/sunrise/d/k;

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "java.lang.Thread"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sunrise/d/j;->k:[Ljava/lang/String;

    if-nez p1, :cond_0

    sget-boolean v0, Lcom/sunrise/h/b;->b:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_3

    :try_start_0
    new-instance v0, Lcom/sunrise/e/a;

    new-instance v1, Lcom/sunrise/h/a;

    invoke-direct {v1}, Lcom/sunrise/h/a;-><init>()V

    invoke-direct {v0, v1}, Lcom/sunrise/e/a;-><init>(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object p1, v0

    :cond_0
    :goto_2
    iput-object p1, p0, Lcom/sunrise/d/j;->f:Lcom/sunrise/e/a;

    if-nez p1, :cond_1

    iput-boolean v2, p0, Lcom/sunrise/d/j;->h:Z

    :cond_1
    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/sql/Timestamp;

    sget-object v2, Lcom/sunrise/e/v;->b:Lcom/sunrise/e/v;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/sql/Date;

    sget-object v2, Lcom/sunrise/e/v;->a:Lcom/sunrise/e/v;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/sql/Time;

    sget-object v2, Lcom/sunrise/e/y;->a:Lcom/sunrise/e/y;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/sunrise/f/u;->a:Lcom/sunrise/f/u;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/sunrise/f/n;->a:Lcom/sunrise/f/n;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Lcom/sunrise/a/e;

    sget-object v2, Lcom/sunrise/e/q;->a:Lcom/sunrise/e/q;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Lcom/sunrise/a/b;

    sget-object v2, Lcom/sunrise/f/r;->a:Lcom/sunrise/f/r;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/sunrise/e/q;->a:Lcom/sunrise/e/q;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/HashMap;

    sget-object v2, Lcom/sunrise/e/q;->a:Lcom/sunrise/e/q;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/sunrise/e/q;->a:Lcom/sunrise/e/q;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/TreeMap;

    sget-object v2, Lcom/sunrise/e/q;->a:Lcom/sunrise/e/q;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Lcom/sunrise/e/q;->a:Lcom/sunrise/e/q;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/sunrise/e/q;->a:Lcom/sunrise/e/q;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/sunrise/f/r;->a:Lcom/sunrise/f/r;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/List;

    sget-object v2, Lcom/sunrise/f/r;->a:Lcom/sunrise/f/r;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/sunrise/f/r;->a:Lcom/sunrise/f/r;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Lcom/sunrise/e/o;->a:Lcom/sunrise/e/o;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/sunrise/f/bb;->a:Lcom/sunrise/f/bb;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/StringBuffer;

    sget-object v2, Lcom/sunrise/f/bb;->a:Lcom/sunrise/f/bb;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sunrise/f/bb;->a:Lcom/sunrise/f/bb;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sunrise/f/p;->a:Lcom/sunrise/f/p;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/sunrise/f/p;->a:Lcom/sunrise/f/p;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sunrise/e/r;->a:Lcom/sunrise/e/r;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/sunrise/e/r;->a:Lcom/sunrise/e/r;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sunrise/e/r;->a:Lcom/sunrise/e/r;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/sunrise/e/r;->a:Lcom/sunrise/e/r;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sunrise/f/ab;->a:Lcom/sunrise/f/ab;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/sunrise/f/ab;->a:Lcom/sunrise/f/ab;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sunrise/f/ak;->a:Lcom/sunrise/f/ak;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/sunrise/f/ak;->a:Lcom/sunrise/f/ak;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/sunrise/f/l;->a:Lcom/sunrise/f/l;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/sunrise/f/k;->a:Lcom/sunrise/f/k;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sunrise/f/aa;->a:Lcom/sunrise/f/aa;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/sunrise/f/aa;->a:Lcom/sunrise/f/aa;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sunrise/e/r;->a:Lcom/sunrise/e/r;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/sunrise/e/r;->a:Lcom/sunrise/e/r;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/sunrise/f/m;->a:Lcom/sunrise/f/m;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/sunrise/f/m;->a:Lcom/sunrise/f/m;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, [C

    new-instance v2, Lcom/sunrise/f/o;

    invoke-direct {v2}, Lcom/sunrise/f/o;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/sunrise/f/m;->a:Lcom/sunrise/f/m;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v2, Lcom/sunrise/f/ab;->a:Lcom/sunrise/f/ab;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v2, Lcom/sunrise/f/ak;->a:Lcom/sunrise/f/ak;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/sunrise/f/at;->a:Lcom/sunrise/f/at;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/ref/WeakReference;

    sget-object v2, Lcom/sunrise/f/at;->a:Lcom/sunrise/f/at;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/ref/SoftReference;

    sget-object v2, Lcom/sunrise/f/at;->a:Lcom/sunrise/f/at;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/Currency;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/net/InetAddress;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/net/Inet4Address;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/net/Inet6Address;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/io/File;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Lcom/sunrise/a/f;

    sget-object v2, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/sunrise/e/r;->a:Lcom/sunrise/e/r;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v2, Lcom/sunrise/f/f;->a:Lcom/sunrise/f/f;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v2, Lcom/sunrise/f/f;->a:Lcom/sunrise/f/f;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/StackTraceElement;

    sget-object v2, Lcom/sunrise/e/w;->a:Lcom/sunrise/e/w;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/io/Serializable;

    sget-object v2, Lcom/sunrise/e/o;->a:Lcom/sunrise/e/o;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/Cloneable;

    sget-object v2, Lcom/sunrise/e/o;->a:Lcom/sunrise/e/o;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/lang/Comparable;

    sget-object v2, Lcom/sunrise/e/o;->a:Lcom/sunrise/e/o;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-class v1, Ljava/io/Closeable;

    sget-object v2, Lcom/sunrise/e/o;->a:Lcom/sunrise/e/o;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v0, "java.lang.Thread"

    invoke-virtual {p0, v0}, Lcom/sunrise/d/j;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/sunrise/d/j;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sunrise/d/j;->a([Ljava/lang/String;)V

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Lcom/sunrise/e/a;

    invoke-direct {v0, p2}, Lcom/sunrise/e/a;-><init>(Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_2
.end method

.method public static a()Lcom/sunrise/d/j;
    .locals 1

    sget-object v0, Lcom/sunrise/d/j;->b:Lcom/sunrise/d/j;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 2

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sunrise/d/j;->a(Ljava/lang/Class;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sunrise/d/j;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/math/BigInteger;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/math/BigDecimal;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/util/Date;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Date;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Time;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Timestamp;

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()[Ljava/lang/String;
    .locals 1

    const-string v0, "fastjson.parser.deny"

    invoke-static {v0}, Lcom/sunrise/h/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sunrise/d/j;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/sunrise/d/j;Lcom/sunrise/h/h;Lcom/sunrise/h/c;)Lcom/sunrise/e/l;
    .locals 3

    iget-object v1, p2, Lcom/sunrise/h/h;->a:Ljava/lang/Class;

    iget-object v0, p3, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    const-class v2, Ljava/util/List;

    if-eq v0, v2, :cond_0

    const-class v2, Ljava/util/ArrayList;

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v0, Lcom/sunrise/e/d;

    invoke-direct {v0, p1, v1, p3}, Lcom/sunrise/e/d;-><init>(Lcom/sunrise/d/j;Ljava/lang/Class;Lcom/sunrise/h/c;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/sunrise/e/g;

    invoke-direct {v0, p1, v1, p3}, Lcom/sunrise/e/g;-><init>(Lcom/sunrise/d/j;Ljava/lang/Class;Lcom/sunrise/h/c;)V

    goto :goto_0
.end method

.method public a(Lcom/sunrise/h/c;)Lcom/sunrise/e/s;
    .locals 2

    iget-object v0, p1, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    iget-object v1, p1, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/d/j;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    invoke-virtual {v0, p2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/e/s;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p2, :cond_2

    move-object p2, p1

    :cond_2
    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    invoke-virtual {v0, p2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/e/s;

    if-nez v0, :cond_0

    const-class v1, Lcom/sunrise/b/d;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/sunrise/b/d;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/sunrise/b/d;->h()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    if-eq v1, v2, :cond_3

    invoke-virtual {p0, v1, v1}, Lcom/sunrise/d/j;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v1, p2, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_4

    instance-of v1, p2, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_4

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_17

    :cond_4
    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    invoke-virtual {v0, p1}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/e/s;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x24

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/sunrise/d/j;->k:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/sunrise/d/j;->k:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parser deny : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const-string v0, "java.awt."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/sunrise/f/h;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/sunrise/d/j;->i:Z

    if-nez v0, :cond_8

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v1, "java.awt.Point"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/sunrise/f/h;->a:Lcom/sunrise/f/h;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v1, "java.awt.Font"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/sunrise/f/h;->a:Lcom/sunrise/f/h;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v1, "java.awt.Rectangle"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/sunrise/f/h;->a:Lcom/sunrise/f/h;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v1, "java.awt.Color"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/sunrise/f/h;->a:Lcom/sunrise/f/h;

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    sget-object v0, Lcom/sunrise/f/h;->a:Lcom/sunrise/f/h;

    move-object v1, v0

    :cond_8
    sget-boolean v0, Lcom/sunrise/d/j;->j:Z

    if-nez v0, :cond_d

    :try_start_1
    const-string v0, "java.time."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.time.LocalDateTime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.time.LocalDate"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.time.LocalTime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.time.ZonedDateTime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.time.OffsetDateTime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.time.OffsetTime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.time.ZoneOffset"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.time.ZoneRegion"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.time.ZoneId"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.time.Period"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.time.Duration"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.time.Instant"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    invoke-virtual {v0, p1}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/e/s;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    move-object v2, v0

    :goto_5
    const-string v0, "java.nio.file.Path"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    sget-object v1, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    invoke-virtual {v0, p1, v1}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_2
    const-class v1, Lcom/sunrise/e/e;

    invoke-static {v1, v0}, Lcom/sunrise/h/j;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/e/e;

    invoke-interface {v0}, Lcom/sunrise/e/e;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    iget-object v5, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    invoke-virtual {v5, v1, v0}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    :cond_b
    if-nez v2, :cond_15

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    invoke-virtual {v0, p2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/e/s;

    :goto_7
    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/sunrise/e/h;

    invoke-direct {v0, p1}, Lcom/sunrise/e/h;-><init>(Ljava/lang/Class;)V

    :goto_8
    invoke-virtual {p0, p2, v0}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;Lcom/sunrise/e/s;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sput-boolean v5, Lcom/sunrise/d/j;->i:Z

    goto/16 :goto_3

    :cond_c
    :try_start_3
    const-string v0, "java.util.Optional"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.util.Optional"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/t;->a:Lcom/sunrise/e/t;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.util.OptionalDouble"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/t;->a:Lcom/sunrise/e/t;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.util.OptionalInt"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/t;->a:Lcom/sunrise/e/t;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    const-string v2, "java.util.OptionalLong"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lcom/sunrise/e/t;->a:Lcom/sunrise/e/t;

    invoke-virtual {v0, v2, v4}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    invoke-virtual {v0, p1}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/e/s;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v0

    sput-boolean v5, Lcom/sunrise/d/j;->j:Z

    :cond_d
    move-object v2, v1

    goto/16 :goto_5

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/sunrise/f/ao;->a:Lcom/sunrise/f/ao;

    goto :goto_8

    :cond_f
    const-class v0, Ljava/util/Set;

    if-eq p1, v0, :cond_10

    const-class v0, Ljava/util/HashSet;

    if-eq p1, v0, :cond_10

    const-class v0, Ljava/util/Collection;

    if-eq p1, v0, :cond_10

    const-class v0, Ljava/util/List;

    if-eq p1, v0, :cond_10

    const-class v0, Ljava/util/ArrayList;

    if-ne p1, v0, :cond_11

    :cond_10
    sget-object v0, Lcom/sunrise/f/r;->a:Lcom/sunrise/f/r;

    goto :goto_8

    :cond_11
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/sunrise/f/r;->a:Lcom/sunrise/f/r;

    goto :goto_8

    :cond_12
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/sunrise/e/q;->a:Lcom/sunrise/e/q;

    goto/16 :goto_8

    :cond_13
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/sunrise/e/x;

    invoke-direct {v0, p0, p1}, Lcom/sunrise/e/x;-><init>(Lcom/sunrise/d/j;Ljava/lang/Class;)V

    goto/16 :goto_8

    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/sunrise/d/j;->b(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    goto/16 :goto_8

    :cond_15
    move-object v0, v2

    goto/16 :goto_7

    :cond_16
    move-object v0, v1

    goto/16 :goto_4

    :cond_17
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;
    .locals 2

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    invoke-virtual {v0, p1}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/e/s;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/sunrise/d/j;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/sunrise/d/j;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sunrise/e/o;->a:Lcom/sunrise/e/o;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sunrise/d/j;->k:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/sunrise/d/j;->k:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sunrise/d/j;->k:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/sunrise/d/j;->k:[Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Type;Lcom/sunrise/e/s;)V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/j;->g:Lcom/sunrise/h/f;

    invoke-virtual {v0, p1, p2}, Lcom/sunrise/h/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;
    .locals 9

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/sunrise/d/j;->h:Z

    if-eqz v2, :cond_14

    const-class v1, Lcom/sunrise/b/d;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/sunrise/b/d;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sunrise/b/d;->m()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljava/lang/Void;

    if-eq v2, v4, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/sunrise/e/s;

    if-eqz v4, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/sunrise/e/s;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    :cond_0
    invoke-interface {v1}, Lcom/sunrise/b/d;->a()Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_14

    invoke-static {v1}, Lcom/sunrise/h/h;->a(Lcom/sunrise/b/d;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, p1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_a

    move v1, v3

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_3

    move v1, v3

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/sunrise/d/j;->f:Lcom/sunrise/e/a;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sunrise/d/j;->f:Lcom/sunrise/e/a;

    iget-object v2, v2, Lcom/sunrise/e/a;->a:Lcom/sunrise/h/a;

    invoke-virtual {v2, p1}, Lcom/sunrise/h/a;->a(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v3

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sunrise/h/b;->b(Ljava/lang/String;)Z

    move-result v1

    :cond_5
    if-eqz v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v3

    :cond_6
    iget-object v2, p0, Lcom/sunrise/d/j;->d:Lcom/sunrise/a/k;

    invoke-static {p1, p2, v2}, Lcom/sunrise/h/h;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/sunrise/a/k;)Lcom/sunrise/h/h;

    move-result-object v2

    if-eqz v1, :cond_7

    iget-object v4, v2, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    array-length v4, v4

    const/16 v5, 0xc8

    if-le v4, v5, :cond_7

    move v1, v3

    :cond_7
    iget-object v4, v2, Lcom/sunrise/h/h;->c:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_8

    if-nez v4, :cond_8

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_8

    move v1, v3

    :cond_8
    iget-object v4, v2, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    array-length v5, v4

    move v2, v3

    :goto_2
    if-ge v2, v5, :cond_9

    aget-object v6, v4, v2

    iget-boolean v7, v6, Lcom/sunrise/h/c;->g:Z

    if-eqz v7, :cond_b

    move v1, v3

    :cond_9
    :goto_3
    if-eqz v1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_13

    :goto_4
    if-nez v3, :cond_12

    new-instance v1, Lcom/sunrise/e/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunrise/e/n;-><init>(Lcom/sunrise/d/j;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Ljava/lang/Object;

    if-eq v1, v4, :cond_14

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_b
    iget-object v7, v6, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-nez v8, :cond_c

    move v1, v3

    goto :goto_3

    :cond_c
    invoke-virtual {v7}, Ljava/lang/Class;->isMemberClass()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_d

    move v1, v3

    goto :goto_3

    :cond_d
    invoke-virtual {v6}, Lcom/sunrise/h/c;->b()Ljava/lang/reflect/Member;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v6}, Lcom/sunrise/h/c;->b()Ljava/lang/reflect/Member;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sunrise/h/b;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    move v1, v3

    goto :goto_3

    :cond_e
    invoke-virtual {v6}, Lcom/sunrise/h/c;->d()Lcom/sunrise/b/b;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-interface {v6}, Lcom/sunrise/b/b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sunrise/h/b;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v6}, Lcom/sunrise/b/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_10

    :cond_f
    move v1, v3

    goto :goto_3

    :cond_10
    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p0, v7}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v6

    instance-of v6, v6, Lcom/sunrise/e/h;

    if-nez v6, :cond_11

    move v1, v3

    goto/16 :goto_3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_12
    iget-object v1, p0, Lcom/sunrise/d/j;->d:Lcom/sunrise/a/k;

    invoke-static {p1, p2, v1}, Lcom/sunrise/h/h;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/sunrise/a/k;)Lcom/sunrise/h/h;

    move-result-object v2

    :try_start_1
    iget-object v1, p0, Lcom/sunrise/d/j;->f:Lcom/sunrise/e/a;

    invoke-virtual {v1, p0, v2}, Lcom/sunrise/e/a;->a(Lcom/sunrise/d/j;Lcom/sunrise/h/h;)Lcom/sunrise/e/s;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sunrise/a/d; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    new-instance v1, Lcom/sunrise/e/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunrise/e/n;-><init>(Lcom/sunrise/d/j;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    new-instance v1, Lcom/sunrise/e/n;

    invoke-direct {v1, p0, v2}, Lcom/sunrise/e/n;-><init>(Lcom/sunrise/d/j;Lcom/sunrise/h/h;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    new-instance v2, Lcom/sunrise/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create asm deserializer error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_13
    move v3, v1

    goto/16 :goto_4

    :cond_14
    move v1, v2

    goto/16 :goto_1
.end method

.method public c()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/j;->e:Ljava/lang/ClassLoader;

    return-object v0
.end method
