.class public Lcom/sunrise/h/a;
.super Ljava/lang/ClassLoader;


# static fields
.field private static a:Ljava/security/ProtectionDomain;

.field private static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunrise/h/a;->b:Ljava/util/Map;

    new-instance v0, Lcom/sunrise/h/a$1;

    invoke-direct {v0}, Lcom/sunrise/h/a$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/ProtectionDomain;

    sput-object v0, Lcom/sunrise/h/a;->a:Ljava/security/ProtectionDomain;

    const/16 v0, 0x38

    new-array v2, v0, [Ljava/lang/Class;

    const-class v0, Lcom/sunrise/a/a;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-class v3, Lcom/sunrise/a/e;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-class v3, Lcom/sunrise/a/b;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-class v3, Lcom/sunrise/a/f;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-class v3, Lcom/sunrise/a/c;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-class v3, Lcom/sunrise/a/d;

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-class v3, Lcom/sunrise/a/g;

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-class v3, Lcom/sunrise/a/h;

    aput-object v3, v2, v0

    const/16 v0, 0x8

    const-class v3, Lcom/sunrise/a/i;

    aput-object v3, v2, v0

    const/16 v0, 0x9

    const-class v3, Lcom/sunrise/a/j;

    aput-object v3, v2, v0

    const/16 v0, 0xa

    const-class v3, Lcom/sunrise/a/l;

    aput-object v3, v2, v0

    const/16 v0, 0xb

    const-class v3, Lcom/sunrise/h/c;

    aput-object v3, v2, v0

    const/16 v0, 0xc

    const-class v3, Lcom/sunrise/h/k;

    aput-object v3, v2, v0

    const/16 v0, 0xd

    const-class v3, Lcom/sunrise/h/d;

    aput-object v3, v2, v0

    const/16 v0, 0xe

    const-class v3, Lcom/sunrise/h/f;

    aput-object v3, v2, v0

    const/16 v0, 0xf

    const-class v3, Lcom/sunrise/h/i;

    aput-object v3, v2, v0

    const/16 v0, 0x10

    const-class v3, Lcom/sunrise/h/h;

    aput-object v3, v2, v0

    const/16 v0, 0x11

    const-class v3, Lcom/sunrise/f/ap;

    aput-object v3, v2, v0

    const/16 v0, 0x12

    const-class v3, Lcom/sunrise/f/ag;

    aput-object v3, v2, v0

    const/16 v0, 0x13

    const-class v3, Lcom/sunrise/f/ay;

    aput-object v3, v2, v0

    const/16 v0, 0x14

    const-class v3, Lcom/sunrise/f/av;

    aput-object v3, v2, v0

    const/16 v0, 0x15

    const-class v3, Lcom/sunrise/f/af;

    aput-object v3, v2, v0

    const/16 v0, 0x16

    const-class v3, Lcom/sunrise/f/az;

    aput-object v3, v2, v0

    const/16 v0, 0x17

    const-class v3, Lcom/sunrise/f/ax;

    aput-object v3, v2, v0

    const/16 v0, 0x18

    const-class v3, Lcom/sunrise/f/ai;

    aput-object v3, v2, v0

    const/16 v0, 0x19

    const-class v3, Lcom/sunrise/f/ah;

    aput-object v3, v2, v0

    const/16 v0, 0x1a

    const-class v3, Lcom/sunrise/f/t;

    aput-object v3, v2, v0

    const/16 v0, 0x1b

    const-class v3, Lcom/sunrise/f/c;

    aput-object v3, v2, v0

    const/16 v0, 0x1c

    const-class v3, Lcom/sunrise/f/j;

    aput-object v3, v2, v0

    const/16 v0, 0x1d

    const-class v3, Lcom/sunrise/f/an;

    aput-object v3, v2, v0

    const/16 v0, 0x1e

    const-class v3, Lcom/sunrise/f/ar;

    aput-object v3, v2, v0

    const/16 v0, 0x1f

    const-class v3, Lcom/sunrise/f/as;

    aput-object v3, v2, v0

    const/16 v0, 0x20

    const-class v3, Lcom/sunrise/f/bd;

    aput-object v3, v2, v0

    const/16 v0, 0x21

    const-class v3, Lcom/sunrise/f/ba;

    aput-object v3, v2, v0

    const/16 v0, 0x22

    const-class v3, Lcom/sunrise/f/s;

    aput-object v3, v2, v0

    const/16 v0, 0x23

    const-class v3, Lcom/sunrise/f/au;

    aput-object v3, v2, v0

    const/16 v0, 0x24

    const-class v3, Lcom/sunrise/f/aw;

    aput-object v3, v2, v0

    const/16 v0, 0x25

    const-class v3, Lcom/sunrise/e/n;

    aput-object v3, v2, v0

    const/16 v0, 0x26

    const-class v3, Lcom/sunrise/d/j;

    aput-object v3, v2, v0

    const/16 v0, 0x27

    const-class v3, Lcom/sunrise/d/a;

    aput-object v3, v2, v0

    const/16 v0, 0x28

    const-class v3, Lcom/sunrise/d/d;

    aput-object v3, v2, v0

    const/16 v0, 0x29

    const-class v3, Lcom/sunrise/d/e;

    aput-object v3, v2, v0

    const/16 v0, 0x2a

    const-class v3, Lcom/sunrise/d/i;

    aput-object v3, v2, v0

    const/16 v0, 0x2b

    const-class v3, Lcom/sunrise/d/h;

    aput-object v3, v2, v0

    const/16 v0, 0x2c

    const-class v3, Lcom/sunrise/d/k;

    aput-object v3, v2, v0

    const/16 v0, 0x2d

    const-class v3, Lcom/sunrise/d/c;

    aput-object v3, v2, v0

    const/16 v0, 0x2e

    const-class v3, Lcom/sunrise/d/g;

    aput-object v3, v2, v0

    const/16 v0, 0x2f

    const-class v3, Lcom/sunrise/d/f;

    aput-object v3, v2, v0

    const/16 v0, 0x30

    const-class v3, Lcom/sunrise/e/e;

    aput-object v3, v2, v0

    const/16 v0, 0x31

    const-class v3, Lcom/sunrise/e/s;

    aput-object v3, v2, v0

    const/16 v0, 0x32

    const-class v3, Lcom/sunrise/e/j;

    aput-object v3, v2, v0

    const/16 v0, 0x33

    const-class v3, Lcom/sunrise/e/i;

    aput-object v3, v2, v0

    const/16 v0, 0x34

    const-class v3, Lcom/sunrise/e/k;

    aput-object v3, v2, v0

    const/16 v0, 0x35

    const-class v3, Lcom/sunrise/f/i;

    aput-object v3, v2, v0

    const/16 v0, 0x36

    const-class v3, Lcom/sunrise/e/l;

    aput-object v3, v2, v0

    const/16 v0, 0x37

    const-class v3, Lcom/sunrise/e/g;

    aput-object v3, v2, v0

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v1, v2, v0

    sget-object v4, Lcom/sunrise/h/a;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/sunrise/h/a;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static a()Ljava/lang/ClassLoader;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-class v1, Lcom/sunrise/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-class v0, Lcom/sunrise/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;[BII)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    sget-object v5, Lcom/sunrise/h/a;->a:Ljava/security/ProtectionDomain;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sunrise/h/a;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/sunrise/h/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method
