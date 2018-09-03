.class public Lcom/sunrise/f/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/am;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/am;

    invoke-direct {v0}, Lcom/sunrise/f/am;-><init>()V

    sput-object v0, Lcom/sunrise/f/am;->a:Lcom/sunrise/f/am;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sunrise/f/am;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v2, 0x0

    const/16 v6, 0x11

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    const-class v0, Ljava/net/InetSocketAddress;

    if-ne p2, v0, :cond_6

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_1

    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/sunrise/d/a;->b(I)V

    :goto_1
    invoke-interface {v3}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v6}, Lcom/sunrise/d/d;->a(I)V

    const-string v4, "address"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v6}, Lcom/sunrise/d/a;->b(I)V

    const-class v0, Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Lcom/sunrise/d/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_2
    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v2

    const/16 v4, 0x10

    if-ne v2, v4, :cond_5

    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    move-object v2, v1

    move v1, v0

    goto :goto_1

    :cond_2
    const-string v4, "port"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v6}, Lcom/sunrise/d/a;->b(I)V

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v0

    if-eq v0, v5, :cond_3

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "port is not int"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-interface {v3}, Lcom/sunrise/d/d;->n()I

    move-result v0

    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    move-object v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v6}, Lcom/sunrise/d/a;->b(I)V

    invoke-virtual {p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_5
    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Lcom/sunrise/d/a;->b(I)V

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0

    :cond_6
    iget v0, p1, Lcom/sunrise/d/a;->f:I

    if-ne v0, v5, :cond_9

    iput v1, p1, Lcom/sunrise/d/a;->f:I

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/sunrise/d/a;->b(I)V

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    const-string v0, "val"

    invoke-interface {v3}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    invoke-virtual {p1, v6}, Lcom/sunrise/d/a;->b(I)V

    invoke-virtual {p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Lcom/sunrise/d/a;->b(I)V

    :goto_3
    if-nez v0, :cond_a

    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-class v2, Ljava/util/UUID;

    if-ne p2, v2, :cond_c

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_a
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_b

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_b
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "expect string"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-class v2, Ljava/net/URI;

    if-ne p2, v2, :cond_d

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    const-class v2, Ljava/net/URL;

    if-ne p2, v2, :cond_e

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    const-string v2, "create url error"

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    const-class v2, Ljava/util/regex/Pattern;

    if-ne p2, v2, :cond_f

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    const-class v2, Ljava/util/Locale;

    if-ne p2, v2, :cond_12

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-ne v2, v7, :cond_10

    new-instance v2, Ljava/util/Locale;

    aget-object v0, v0, v1

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    array-length v2, v0

    if-ne v2, v5, :cond_11

    new-instance v2, Ljava/util/Locale;

    aget-object v1, v0, v1

    aget-object v0, v0, v7

    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    new-instance v2, Ljava/util/Locale;

    aget-object v1, v0, v1

    aget-object v3, v0, v7

    aget-object v0, v0, v5

    invoke-direct {v2, v1, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-class v1, Ljava/text/SimpleDateFormat;

    if-ne p2, v1, :cond_13

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-interface {v3}, Lcom/sunrise/d/d;->w()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v3}, Lcom/sunrise/d/d;->v()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_0

    :cond_13
    const-class v1, Ljava/net/InetAddress;

    if-eq p2, v1, :cond_14

    const-class v1, Ljava/net/Inet4Address;

    if-eq p2, v1, :cond_14

    const-class v1, Ljava/net/Inet6Address;

    if-ne p2, v1, :cond_15

    :cond_14
    :try_start_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    const-string v2, "deserialize inet adress error"

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_15
    const-class v1, Ljava/io/File;

    if-ne p2, v1, :cond_16

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const-class v1, Ljava/util/TimeZone;

    if-ne p2, v1, :cond_17

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    goto/16 :goto_0

    :cond_17
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_18

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    :cond_18
    const-class v1, Ljava/lang/Class;

    if-ne p2, v1, :cond_19

    invoke-virtual {p1}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunrise/d/j;->c()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunrise/h/k;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    goto/16 :goto_0

    :cond_19
    const-class v1, Ljava/nio/charset/Charset;

    if-ne p2, v1, :cond_1a

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    goto/16 :goto_0

    :cond_1a
    const-class v1, Ljava/util/Currency;

    if-ne p2, v1, :cond_1b

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    goto/16 :goto_0

    :cond_1b
    const-class v1, Lcom/sunrise/a/f;

    if-ne p2, v1, :cond_1c

    new-instance v2, Lcom/sunrise/a/f;

    invoke-direct {v2, v0}, Lcom/sunrise/a/f;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    invoke-interface {p2}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.nio.file.Path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :try_start_2
    sget-object v2, Lcom/sunrise/f/am;->b:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1d

    sget-boolean v2, Lcom/sunrise/f/am;->c:Z

    if-nez v2, :cond_1d

    const-string v2, "java.nio.file.Paths"

    invoke-static {v2}, Lcom/sunrise/h/k;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sunrise/f/am;->b:Ljava/lang/reflect/Method;

    :cond_1d
    sget-object v2, Lcom/sunrise/f/am;->b:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1e

    sget-object v2, Lcom/sunrise/f/am;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    :cond_1e
    new-instance v0, Lcom/sunrise/a/d;

    const-string v2, "Path deserialize erorr"

    invoke-direct {v0, v2}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    :catch_2
    move-exception v0

    sput-boolean v7, Lcom/sunrise/f/am;->c:Z

    :cond_1f
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiscCodec not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    const-string v2, "Path deserialize erorr"

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    const-string v2, "Path deserialize erorr"

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a(Lcom/sunrise/f/af;Lcom/sunrise/f/az;Ljava/util/Iterator;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x5b

    invoke-virtual {p2, v1}, Lcom/sunrise/f/az;->write(I)V

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p2, v1}, Lcom/sunrise/f/az;->write(I)V

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sunrise/f/af;->c(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Lcom/sunrise/f/az;->write(I)V

    return-void
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x7d

    const/16 v4, 0x7b

    const/16 v3, 0x2c

    iget-object v1, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    if-nez p2, :cond_0

    invoke-virtual {v1}, Lcom/sunrise/f/az;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/text/SimpleDateFormat;

    if-ne v0, v2, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    invoke-virtual {v1, v2}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p4, :cond_2

    invoke-virtual {v1, v4}, Lcom/sunrise/f/az;->write(I)V

    sget-object v2, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sunrise/f/az;->c(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sunrise/f/af;->b(Ljava/lang/String;)V

    const-string v2, "val"

    invoke-virtual {v1, v3, v2, v0}, Lcom/sunrise/f/az;->a(CLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0

    :cond_1
    const-class v2, Ljava/lang/Class;

    if-ne v0, v2, :cond_3

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-class v2, Ljava/net/InetSocketAddress;

    if-ne v0, v2, :cond_5

    check-cast p2, Ljava/net/InetSocketAddress;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v4}, Lcom/sunrise/f/az;->write(I)V

    if-eqz v0, :cond_4

    const-string v2, "address"

    invoke-virtual {v1, v2}, Lcom/sunrise/f/az;->c(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sunrise/f/af;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/sunrise/f/az;->write(I)V

    :cond_4
    const-string v0, "port"

    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->c(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->b(I)V

    invoke-virtual {v1, v5}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0

    :cond_5
    instance-of v2, p2, Ljava/io/File;

    if-eqz v2, :cond_6

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    instance-of v2, p2, Ljava/net/InetAddress;

    if-eqz v2, :cond_7

    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    instance-of v2, p2, Ljava/util/TimeZone;

    if-eqz v2, :cond_8

    check-cast p2, Ljava/util/TimeZone;

    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    instance-of v2, p2, Ljava/util/Currency;

    if-eqz v2, :cond_9

    check-cast p2, Ljava/util/Currency;

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    instance-of v2, p2, Lcom/sunrise/a/i;

    if-eqz v2, :cond_a

    check-cast p2, Lcom/sunrise/a/i;

    invoke-interface {p2, v1}, Lcom/sunrise/a/i;->a(Ljava/lang/Appendable;)V

    goto/16 :goto_0

    :cond_a
    instance-of v2, p2, Ljava/util/Iterator;

    if-eqz v2, :cond_b

    check-cast p2, Ljava/util/Iterator;

    invoke-virtual {p0, p1, v1, p2}, Lcom/sunrise/f/am;->a(Lcom/sunrise/f/af;Lcom/sunrise/f/az;Ljava/util/Iterator;)V

    goto/16 :goto_0

    :cond_b
    instance-of v2, p2, Ljava/lang/Iterable;

    if-eqz v2, :cond_c

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sunrise/f/am;->a(Lcom/sunrise/f/af;Lcom/sunrise/f/az;Ljava/util/Iterator;)V

    goto/16 :goto_0

    :cond_c
    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support class : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
