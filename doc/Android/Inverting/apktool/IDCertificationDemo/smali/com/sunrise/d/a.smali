.class public Lcom/sunrise/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final h:Ljava/util/Set;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/sunrise/d/k;

.field protected c:Lcom/sunrise/d/j;

.field public final d:Lcom/sunrise/d/d;

.field protected e:Lcom/sunrise/d/i;

.field public f:I

.field protected g:Lcom/sunrise/e/m;

.field private i:Ljava/lang/String;

.field private j:Ljava/text/DateFormat;

.field private k:[Lcom/sunrise/d/i;

.field private l:I

.field private m:Ljava/util/List;

.field private n:Ljava/util/List;

.field private o:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    const-class v1, Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    const-class v1, Ljava/math/BigDecimal;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sunrise/d/a;->h:Ljava/util/Set;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/sunrise/d/d;Lcom/sunrise/d/j;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sunrise/a/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/sunrise/d/a;->i:Ljava/lang/String;

    iput v2, p0, Lcom/sunrise/d/a;->l:I

    iput v2, p0, Lcom/sunrise/d/a;->f:I

    iput-object v1, p0, Lcom/sunrise/d/a;->n:Ljava/util/List;

    iput-object v1, p0, Lcom/sunrise/d/a;->o:Ljava/util/List;

    iput-object v1, p0, Lcom/sunrise/d/a;->g:Lcom/sunrise/e/m;

    iput-object p2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    iput-object p1, p0, Lcom/sunrise/d/a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sunrise/d/a;->c:Lcom/sunrise/d/j;

    iget-object v0, p3, Lcom/sunrise/d/j;->c:Lcom/sunrise/d/k;

    iput-object v0, p0, Lcom/sunrise/d/a;->b:Lcom/sunrise/d/k;

    invoke-interface {p2}, Lcom/sunrise/d/d;->e()C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Lcom/sunrise/d/d;->f()C

    check-cast p2, Lcom/sunrise/d/e;

    const/16 v0, 0xc

    iput v0, p2, Lcom/sunrise/d/e;->a:I

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Lcom/sunrise/d/d;->f()C

    check-cast p2, Lcom/sunrise/d/e;

    const/16 v0, 0xe

    iput v0, p2, Lcom/sunrise/d/e;->a:I

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/sunrise/d/d;->d()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sunrise/d/j;)V
    .locals 2

    new-instance v0, Lcom/sunrise/d/g;

    sget v1, Lcom/sunrise/a/a;->f:I

    invoke-direct {v0, p1, v1}, Lcom/sunrise/d/g;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/sunrise/d/a;-><init>(Ljava/lang/Object;Lcom/sunrise/d/d;Lcom/sunrise/d/j;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sunrise/d/j;I)V
    .locals 1

    new-instance v0, Lcom/sunrise/d/g;

    invoke-direct {v0, p1, p3}, Lcom/sunrise/d/g;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/sunrise/d/a;-><init>(Ljava/lang/Object;Lcom/sunrise/d/d;Lcom/sunrise/d/j;)V

    return-void
.end method

.method private b(Lcom/sunrise/d/i;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/sunrise/d/a;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sunrise/d/a;->l:I

    iget-object v1, p0, Lcom/sunrise/d/a;->k:[Lcom/sunrise/d/i;

    if-nez v1, :cond_1

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/sunrise/d/i;

    iput-object v1, p0, Lcom/sunrise/d/a;->k:[Lcom/sunrise/d/i;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sunrise/d/a;->k:[Lcom/sunrise/d/i;

    aput-object p1, v1, v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sunrise/d/a;->k:[Lcom/sunrise/d/i;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/sunrise/d/a;->k:[Lcom/sunrise/d/i;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/sunrise/d/i;

    iget-object v2, p0, Lcom/sunrise/d/a;->k:[Lcom/sunrise/d/i;

    iget-object v3, p0, Lcom/sunrise/d/a;->k:[Lcom/sunrise/d/i;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sunrise/d/a;->k:[Lcom/sunrise/d/i;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/sunrise/d/i;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;
    .locals 2

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    sget-object v1, Lcom/sunrise/d/c;->l:Lcom/sunrise/d/c;

    invoke-interface {v0, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sunrise/d/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/sunrise/d/i;-><init>(Lcom/sunrise/d/i;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    iget-object v0, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    invoke-direct {p0, v0}, Lcom/sunrise/d/a;->b(Lcom/sunrise/d/i;)V

    iget-object v0, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;
    .locals 2

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    sget-object v1, Lcom/sunrise/d/c;->l:Lcom/sunrise/d/c;

    invoke-interface {v0, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/d/a;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/d/a;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->d()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-class v0, [B

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->t()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->d()V

    goto :goto_0

    :cond_1
    const-class v0, [C

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->d()V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sunrise/d/a;->c:Lcom/sunrise/d/j;

    invoke-virtual {v0, p1}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/sunrise/e/s;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sunrise/a/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/d/a;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v8, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-interface {v8}, Lcom/sunrise/d/d;->d()V

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    invoke-interface {v8}, Lcom/sunrise/d/d;->d()V

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect {, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Lcom/sunrise/d/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Lcom/sunrise/d/d;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    const/4 v7, 0x0

    move v3, v7

    :goto_1
    :try_start_0
    invoke-interface {v8}, Lcom/sunrise/d/d;->c()V

    invoke-interface {v8}, Lcom/sunrise/d/d;->e()C

    move-result v0

    sget-object v1, Lcom/sunrise/d/c;->g:Lcom/sunrise/d/c;

    invoke-interface {v8, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    invoke-interface {v8}, Lcom/sunrise/d/d;->f()C

    invoke-interface {v8}, Lcom/sunrise/d/d;->c()V

    invoke-interface {v8}, Lcom/sunrise/d/d;->e()C

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sunrise/d/a;->b:Lcom/sunrise/d/k;

    const/16 v1, 0x22

    invoke-interface {v8, v0, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/k;C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8}, Lcom/sunrise/d/d;->c()V

    invoke-interface {v8}, Lcom/sunrise/d/d;->e()C

    move-result v0

    const/16 v5, 0x3a

    if-eq v0, v5, :cond_49

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expect \':\' at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Lcom/sunrise/d/d;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    throw v0

    :cond_4
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_5

    :try_start_1
    invoke-interface {v8}, Lcom/sunrise/d/d;->f()C

    invoke-interface {v8}, Lcom/sunrise/d/d;->g()V

    invoke-interface {v8}, Lcom/sunrise/d/d;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x27

    if-ne v0, v1, :cond_7

    :try_start_2
    sget-object v0, Lcom/sunrise/d/c;->d:Lcom/sunrise/d/c;

    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/sunrise/d/a;->b:Lcom/sunrise/d/k;

    const/16 v1, 0x27

    invoke-interface {v8, v0, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/k;C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8}, Lcom/sunrise/d/d;->c()V

    invoke-interface {v8}, Lcom/sunrise/d/d;->e()C

    move-result v0

    const/16 v5, 0x3a

    if-eq v0, v5, :cond_49

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expect \':\' at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Lcom/sunrise/d/d;->i()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_8

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_9

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/16 v1, 0x30

    if-lt v0, v1, :cond_a

    const/16 v1, 0x39

    if-le v0, v1, :cond_b

    :cond_a
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_d

    :cond_b
    invoke-interface {v8}, Lcom/sunrise/d/d;->g()V

    invoke-interface {v8}, Lcom/sunrise/d/d;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    invoke-interface {v8}, Lcom/sunrise/d/d;->j()Ljava/lang/Number;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :goto_3
    :try_start_4
    invoke-interface {v8}, Lcom/sunrise/d/d;->e()C

    move-result v1

    const/16 v5, 0x3a

    if-eq v1, v5, :cond_4a

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse number key error"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Lcom/sunrise/d/d;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    const/4 v0, 0x1

    :try_start_5
    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->a(Z)Ljava/lang/Number;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_6
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse number key error"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Lcom/sunrise/d/d;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/16 v1, 0x7b

    if-eq v0, v1, :cond_e

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_10

    :cond_e
    invoke-interface {v8}, Lcom/sunrise/d/d;->d()V

    invoke-virtual {p0}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_f

    invoke-interface {v8}, Lcom/sunrise/d/d;->f()C

    invoke-interface {v8}, Lcom/sunrise/d/d;->c()V

    :cond_f
    invoke-interface {v8}, Lcom/sunrise/d/d;->e()C

    move-result v4

    invoke-interface {v8}, Lcom/sunrise/d/d;->g()V

    sget-object v0, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    if-ne v1, v0, :cond_19

    sget-object v0, Lcom/sunrise/d/c;->p:Lcom/sunrise/d/c;

    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/sunrise/d/a;->b:Lcom/sunrise/d/k;

    const/16 v1, 0x22

    invoke-interface {v8, v0, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/k;C)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sunrise/d/a;->c:Lcom/sunrise/d/j;

    invoke-virtual {v0}, Lcom/sunrise/d/j;->c()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sunrise/h/k;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_12

    sget-object v0, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_10
    sget-object v0, Lcom/sunrise/d/c;->c:Lcom/sunrise/d/c;

    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/sunrise/d/a;->b:Lcom/sunrise/d/k;

    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->b(Lcom/sunrise/d/k;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8}, Lcom/sunrise/d/d;->c()V

    invoke-interface {v8}, Lcom/sunrise/d/d;->e()C

    move-result v0

    const/16 v5, 0x3a

    if-eq v0, v5, :cond_49

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expect \':\' at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Lcom/sunrise/d/d;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actual "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    const/16 v0, 0x10

    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->a(I)V

    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_16

    const/16 v0, 0x10

    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->a(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v1, 0x0

    :try_start_7
    iget-object v0, p0, Lcom/sunrise/d/a;->c:Lcom/sunrise/d/j;

    invoke-virtual {v0, v5}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    instance-of v3, v0, Lcom/sunrise/e/n;

    if-eqz v3, :cond_48

    check-cast v0, Lcom/sunrise/e/n;

    invoke-virtual {v0, p0, v5}, Lcom/sunrise/e/n;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_13

    const-class v0, Ljava/lang/Cloneable;

    if-ne v5, v0, :cond_14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_13
    :goto_6
    invoke-virtual {p0, v2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    move-object p1, v0

    goto/16 :goto_0

    :cond_14
    :try_start_8
    const-string v0, "java.util.Collections$EmptyMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_6

    :cond_15
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_9
    new-instance v1, Lcom/sunrise/a/d;

    const-string v3, "create instance error"

    invoke-direct {v1, v3, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_16
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sunrise/d/a;->a(I)V

    iget-object v0, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    if-eqz v0, :cond_17

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/sunrise/d/a;->j()V

    :cond_17
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/sunrise/d/a;->c:Lcom/sunrise/d/j;

    invoke-static {p1, v5, v0}, Lcom/sunrise/h/k;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/sunrise/d/j;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sunrise/d/a;->a(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual {p0, v2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_0

    :cond_18
    :try_start_a
    iget-object v0, p0, Lcom/sunrise/d/a;->c:Lcom/sunrise/d/j;

    invoke-virtual {v0, v5}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    invoke-interface {v0, p0, v5, p2}, Lcom/sunrise/e/s;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object p1

    invoke-virtual {p0, v2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_0

    :cond_19
    :try_start_b
    const-string v0, "$ref"

    if-ne v1, v0, :cond_26

    sget-object v0, Lcom/sunrise/d/c;->p:Lcom/sunrise/d/c;

    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x4

    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->a(I)V

    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    invoke-interface {v8}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0xd

    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->a(I)V

    const/4 v0, 0x0

    const-string v1, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    if-eqz v1, :cond_23

    iget-object v3, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    iget-object v1, v3, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    instance-of v4, v1, [Ljava/lang/Object;

    if-nez v4, :cond_1a

    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_1c

    :cond_1a
    move-object v0, v1

    :cond_1b
    :goto_7
    move-object p1, v0

    :goto_8
    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_24

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v1, v3, Lcom/sunrise/d/i;->b:Lcom/sunrise/d/i;

    if-eqz v1, :cond_1b

    iget-object v0, v3, Lcom/sunrise/d/i;->b:Lcom/sunrise/d/i;

    iget-object v0, v0, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    goto :goto_7

    :cond_1d
    const-string v1, ".."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, v2, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1e

    iget-object v0, v2, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    move-object p1, v0

    goto :goto_8

    :cond_1e
    new-instance v1, Lcom/sunrise/d/b;

    invoke-direct {v1, v2, v3}, Lcom/sunrise/d/b;-><init>(Lcom/sunrise/d/i;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/b;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/a;->a(I)V

    move-object p1, v0

    goto :goto_8

    :cond_1f
    const-string v1, "$"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move-object v1, v2

    :goto_9
    iget-object v4, v1, Lcom/sunrise/d/i;->b:Lcom/sunrise/d/i;

    if-eqz v4, :cond_20

    iget-object v1, v1, Lcom/sunrise/d/i;->b:Lcom/sunrise/d/i;

    goto :goto_9

    :cond_20
    iget-object v4, v1, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    if-eqz v4, :cond_21

    iget-object v0, v1, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :goto_a
    move-object p1, v0

    goto :goto_8

    :cond_21
    new-instance v4, Lcom/sunrise/d/b;

    invoke-direct {v4, v1, v3}, Lcom/sunrise/d/b;-><init>(Lcom/sunrise/d/i;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/b;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/a;->a(I)V

    goto :goto_a

    :cond_22
    new-instance v1, Lcom/sunrise/d/b;

    invoke-direct {v1, v2, v3}, Lcom/sunrise/d/b;-><init>(Lcom/sunrise/d/i;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/b;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sunrise/d/a;->a(I)V

    :cond_23
    move-object p1, v0

    goto :goto_8

    :cond_24
    const/16 v0, 0x10

    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->a(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-virtual {p0, v2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_0

    :cond_25
    :try_start_c
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal ref, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v3

    invoke-static {v3}, Lcom/sunrise/d/h;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    if-nez v3, :cond_47

    iget-object v0, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    iget-object v0, v0, Lcom/sunrise/d/i;->c:Ljava/lang/Object;

    if-ne p2, v0, :cond_2a

    iget-object v0, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    iget-object v0, v0, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_2a

    iget-object v2, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    move v7, v3

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/sunrise/a/e;

    if-ne v0, v3, :cond_27

    if-nez v1, :cond_2b

    const-string v0, "null"

    :goto_c
    move-object v1, v0

    :cond_27
    const/16 v0, 0x22

    if-ne v4, v0, :cond_2c

    invoke-interface {v8}, Lcom/sunrise/d/d;->m()V

    invoke-interface {v8}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sunrise/d/c;->f:Lcom/sunrise/d/c;

    invoke-interface {v8, v3}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v3

    if-eqz v3, :cond_29

    new-instance v3, Lcom/sunrise/d/g;

    invoke-direct {v3, v0}, Lcom/sunrise/d/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sunrise/d/g;->I()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v3}, Lcom/sunrise/d/g;->D()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_28
    invoke-virtual {v3}, Lcom/sunrise/d/g;->close()V

    :cond_29
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    invoke-interface {v8}, Lcom/sunrise/d/d;->c()V

    invoke-interface {v8}, Lcom/sunrise/d/d;->e()C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_40

    invoke-interface {v8}, Lcom/sunrise/d/d;->f()C

    move v3, v7

    goto/16 :goto_1

    :cond_2a
    invoke-virtual {p0, p1, p2}, Lcom/sunrise/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;

    move-result-object v0

    if-nez v2, :cond_46

    :goto_e
    const/4 v2, 0x1

    move v7, v2

    move-object v2, v0

    goto :goto_b

    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_2c
    const/16 v0, 0x30

    if-lt v4, v0, :cond_2d

    const/16 v0, 0x39

    if-le v4, v0, :cond_2e

    :cond_2d
    const/16 v0, 0x2d

    if-ne v4, v0, :cond_30

    :cond_2e
    invoke-interface {v8}, Lcom/sunrise/d/d;->h()V

    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2f

    invoke-interface {v8}, Lcom/sunrise/d/d;->j()Ljava/lang/Number;

    move-result-object v0

    :goto_f
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2f
    sget-object v0, Lcom/sunrise/d/c;->h:Lcom/sunrise/d/c;

    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->a(Z)Ljava/lang/Number;

    move-result-object v0

    goto :goto_f

    :cond_30
    const/16 v0, 0x5b

    if-ne v4, v0, :cond_34

    invoke-interface {v8}, Lcom/sunrise/d/d;->d()V

    new-instance v0, Lcom/sunrise/a/b;

    invoke-direct {v0}, Lcom/sunrise/a/b;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/d/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    sget-object v3, Lcom/sunrise/d/c;->q:Lcom/sunrise/d/c;

    invoke-interface {v8, v3}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v0}, Lcom/sunrise/a/b;->toArray()[Ljava/lang/Object;

    move-result-object v0

    :cond_31
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_32

    invoke-interface {v8}, Lcom/sunrise/d/d;->d()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual {p0, v2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_0

    :cond_32
    :try_start_d
    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_33

    move v3, v7

    goto/16 :goto_1

    :cond_33
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    const/16 v0, 0x7b

    if-ne v4, v0, :cond_3d

    invoke-interface {v8}, Lcom/sunrise/d/d;->d()V

    if-eqz p2, :cond_38

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_38

    const/4 v0, 0x1

    move v6, v0

    :goto_10
    new-instance v9, Lcom/sunrise/a/e;

    sget-object v0, Lcom/sunrise/d/c;->o:Lcom/sunrise/d/c;

    invoke-interface {v8, v0}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    invoke-direct {v9, v0}, Lcom/sunrise/a/e;-><init>(Z)V

    const/4 v0, 0x0

    if-nez v6, :cond_45

    invoke-virtual {p0, v2, v9, v1}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;

    move-result-object v0

    move-object v5, v0

    :goto_11
    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sunrise/d/a;->g:Lcom/sunrise/e/m;

    if-eqz v4, :cond_44

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_12
    iget-object v10, p0, Lcom/sunrise/d/a;->g:Lcom/sunrise/e/m;

    invoke-interface {v10, p1, v4}, Lcom/sunrise/e/m;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v4, :cond_44

    iget-object v0, p0, Lcom/sunrise/d/a;->c:Lcom/sunrise/d/j;

    invoke-virtual {v0, v4}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    invoke-interface {v0, p0, v4, v1}, Lcom/sunrise/e/s;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x1

    move v11, v0

    move-object v0, v3

    move v3, v11

    :goto_13
    if-nez v3, :cond_35

    invoke-virtual {p0, v9, v1}, Lcom/sunrise/d/a;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_35
    if-eqz v5, :cond_36

    if-eq v9, v0, :cond_36

    iput-object p1, v5, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :cond_36
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/sunrise/d/a;->b(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/sunrise/a/e;

    if-ne v3, v4, :cond_3a

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    if-eqz v6, :cond_37

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;

    :cond_37
    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3b

    invoke-interface {v8}, Lcom/sunrise/d/d;->d()V

    invoke-virtual {p0, v2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-virtual {p0, v2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_0

    :cond_38
    const/4 v0, 0x0

    move v6, v0

    goto :goto_10

    :cond_39
    const/4 v4, 0x0

    goto :goto_12

    :cond_3a
    :try_start_e
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_3b
    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3c

    if-eqz v6, :cond_43

    invoke-virtual {p0}, Lcom/sunrise/d/a;->j()V

    move v3, v7

    goto/16 :goto_1

    :cond_3c
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Lcom/sunrise/d/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    invoke-interface {v8}, Lcom/sunrise/d/d;->d()V

    invoke-virtual {p0}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Lcom/sunrise/a/e;

    if-ne v0, v4, :cond_42

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_3e

    invoke-interface {v8}, Lcom/sunrise/d/d;->d()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    invoke-virtual {p0, v2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_0

    :cond_3e
    :try_start_f
    invoke-interface {v8}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3f

    move v3, v7

    goto/16 :goto_1

    :cond_3f
    new-instance v1, Lcom/sunrise/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, position at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Lcom/sunrise/d/d;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    const/16 v4, 0x7d

    if-ne v3, v4, :cond_41

    invoke-interface {v8}, Lcom/sunrise/d/d;->f()C

    invoke-interface {v8}, Lcom/sunrise/d/d;->g()V

    invoke-interface {v8}, Lcom/sunrise/d/d;->d()V

    invoke-virtual {p0, v0, v1}, Lcom/sunrise/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    invoke-virtual {p0, v2}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_0

    :cond_41
    :try_start_10
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, position at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Lcom/sunrise/d/d;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_42
    move-object v0, v1

    goto/16 :goto_15

    :cond_43
    move v3, v7

    goto/16 :goto_1

    :cond_44
    move v11, v0

    move-object v0, v3

    move v3, v11

    goto/16 :goto_13

    :cond_45
    move-object v5, v0

    goto/16 :goto_11

    :cond_46
    move-object v0, v2

    goto/16 :goto_e

    :cond_47
    move v7, v3

    goto/16 :goto_b

    :cond_48
    move-object v0, v1

    goto/16 :goto_5

    :cond_49
    move v0, v4

    goto/16 :goto_4

    :cond_4a
    move-object v1, v0

    move v0, v4

    goto/16 :goto_4
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/sunrise/d/a;->f:I

    return-void
.end method

.method public a(Lcom/sunrise/d/b;)V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/d/a;->m:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sunrise/d/a;->m:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/sunrise/d/a;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/sunrise/d/i;)V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    sget-object v1, Lcom/sunrise/d/c;->l:Lcom/sunrise/d/c;

    invoke-interface {v0, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 11

    const/4 v10, 0x2

    const/16 v9, 0xd

    const/4 v1, 0x0

    const/16 v8, 0x10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v0, p0, Lcom/sunrise/d/a;->c:Lcom/sunrise/d/j;

    invoke-virtual {v0, v4}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    instance-of v2, v0, Lcom/sunrise/e/n;

    if-eqz v2, :cond_9

    check-cast v0, Lcom/sunrise/e/n;

    :goto_0
    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v2

    if-eq v2, v8, :cond_1

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect {, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v2

    if-ne v2, v8, :cond_2

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    sget-object v3, Lcom/sunrise/d/c;->g:Lcom/sunrise/d/c;

    invoke-interface {v2, v3}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    iget-object v3, p0, Lcom/sunrise/d/a;->b:Lcom/sunrise/d/k;

    invoke-interface {v2, v3}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/k;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v2

    if-ne v2, v9, :cond_0

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0, v8}, Lcom/sunrise/d/d;->a(I)V

    :goto_1
    return-void

    :cond_2
    if-eqz v0, :cond_8

    invoke-virtual {v0, v5}, Lcom/sunrise/e/n;->a(Ljava/lang/String;)Lcom/sunrise/e/l;

    move-result-object v2

    move-object v3, v2

    :goto_2
    if-nez v3, :cond_4

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    sget-object v3, Lcom/sunrise/d/c;->i:Lcom/sunrise/d/c;

    invoke-interface {v2, v3}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setter not found, class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->o()V

    invoke-virtual {p0}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v2

    if-ne v2, v9, :cond_1

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->d()V

    goto :goto_1

    :cond_4
    iget-object v2, v3, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v2, v2, Lcom/sunrise/h/c;->d:Ljava/lang/Class;

    iget-object v5, v3, Lcom/sunrise/e/l;->a:Lcom/sunrise/h/c;

    iget-object v5, v5, Lcom/sunrise/h/c;->e:Ljava/lang/reflect/Type;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v6, :cond_5

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2, v10}, Lcom/sunrise/d/d;->b(I)V

    sget-object v2, Lcom/sunrise/f/ab;->a:Lcom/sunrise/f/ab;

    invoke-virtual {v2, p0, v5, v1}, Lcom/sunrise/f/ab;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, p1, v2}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v2

    if-eq v2, v8, :cond_1

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v2

    if-ne v2, v9, :cond_1

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0, v8}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_1

    :cond_5
    const-class v6, Ljava/lang/String;

    if-ne v2, v6, :cond_6

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    const/4 v5, 0x4

    invoke-interface {v2, v5}, Lcom/sunrise/d/d;->b(I)V

    invoke-static {p0}, Lcom/sunrise/f/bb;->a(Lcom/sunrise/d/a;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_6
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v6, :cond_7

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2, v10}, Lcom/sunrise/d/d;->b(I)V

    sget-object v2, Lcom/sunrise/f/ak;->a:Lcom/sunrise/f/ak;

    invoke-virtual {v2, p0, v5, v1}, Lcom/sunrise/f/ak;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_7
    iget-object v6, p0, Lcom/sunrise/d/a;->c:Lcom/sunrise/d/j;

    invoke-virtual {v6, v2, v5}, Lcom/sunrise/d/j;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v2

    iget-object v6, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/e/s;->a_()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sunrise/d/d;->b(I)V

    invoke-interface {v2, p0, v5, v1}, Lcom/sunrise/e/s;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v3, v1

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->o()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sunrise/d/a;->n:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sunrise/d/a;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/e/k;

    invoke-interface {v0, p1, p2}, Lcom/sunrise/e/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    :goto_1
    instance-of v0, p1, Lcom/sunrise/e/i;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/sunrise/e/i;

    invoke-interface {p1, p2, v1}, Lcom/sunrise/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sunrise/d/a;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sunrise/d/a;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/d/a;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/e/j;

    invoke-interface {v0, p1, p2, v1}, Lcom/sunrise/e/j;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->o()V

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "type not match error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v0}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/sunrise/d/d;->d()V

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lcom/sunrise/d/d;->d()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "type not match error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sunrise/d/a;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v2, 0x0

    const/16 v7, 0x10

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->d()V

    :cond_1
    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exepct \'[\', but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v2

    invoke-static {v2}, Lcom/sunrise/d/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_3

    sget-object v0, Lcom/sunrise/f/ab;->a:Lcom/sunrise/f/ab;

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lcom/sunrise/d/d;->a(I)V

    :goto_0
    iget-object v4, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    invoke-virtual {p0, p2, p3}, Lcom/sunrise/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    sget-object v5, Lcom/sunrise/d/c;->g:Lcom/sunrise/d/c;

    invoke-interface {v1, v5}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v1

    if-ne v1, v7, :cond_5

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    throw v0

    :cond_3
    const-class v0, Ljava/lang/String;

    if-ne v0, p1, :cond_4

    sget-object v0, Lcom/sunrise/f/bb;->a:Lcom/sunrise/f/bb;

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1, v8}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sunrise/d/a;->c:Lcom/sunrise/d/j;

    invoke-virtual {v0, p1}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/e/s;->a_()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    const/16 v5, 0xf

    if-ne v1, v5, :cond_6

    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0, v7}, Lcom/sunrise/d/d;->a(I)V

    return-void

    :cond_6
    :try_start_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, p1, :cond_8

    sget-object v1, Lcom/sunrise/f/ab;->a:Lcom/sunrise/f/ab;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, p0, v5, v6}, Lcom/sunrise/f/ab;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v1

    if-ne v1, v7, :cond_7

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/e/s;->a_()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/sunrise/d/d;->a(I)V

    :cond_7
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_8
    const-class v1, Ljava/lang/String;

    if-ne v1, p1, :cond_b

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v1

    if-ne v1, v8, :cond_9

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    const/16 v6, 0x10

    invoke-interface {v5, v6}, Lcom/sunrise/d/d;->a(I)V

    :goto_4
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    move-object v1, v2

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_c

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->d()V

    move-object v1, v2

    :goto_5
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/sunrise/d/a;->a(Ljava/util/Collection;)V

    goto :goto_3

    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/sunrise/e/s;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_5
.end method

.method public a(Ljava/util/Collection;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/sunrise/d/a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lcom/sunrise/d/a;->h()Lcom/sunrise/d/b;

    move-result-object v1

    new-instance v2, Lcom/sunrise/e/u;

    invoke-direct {v2, p0, p1, v0}, Lcom/sunrise/e/u;-><init>(Lcom/sunrise/d/a;Ljava/util/List;I)V

    iput-object v2, v1, Lcom/sunrise/d/b;->c:Lcom/sunrise/e/l;

    iget-object v0, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    iput-object v0, v1, Lcom/sunrise/d/b;->d:Lcom/sunrise/d/i;

    invoke-virtual {p0, v3}, Lcom/sunrise/d/a;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sunrise/d/a;->h()Lcom/sunrise/d/b;

    move-result-object v0

    new-instance v1, Lcom/sunrise/e/u;

    invoke-direct {v1, p1}, Lcom/sunrise/e/u;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/sunrise/d/b;->c:Lcom/sunrise/e/l;

    iget-object v1, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    iput-object v1, v0, Lcom/sunrise/d/b;->d:Lcom/sunrise/d/i;

    invoke-virtual {p0, v3}, Lcom/sunrise/d/a;->a(I)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x4

    const/16 v7, 0x10

    iget-object v3, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v2

    const/16 v4, 0x15

    if-eq v2, v4, :cond_0

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v2

    const/16 v4, 0x16

    if-ne v2, v4, :cond_1

    :cond_0
    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    :cond_1
    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v2

    const/16 v4, 0xe

    if-eq v2, v4, :cond_2

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect [, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v2

    invoke-static {v2}, Lcom/sunrise/d/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lcom/sunrise/d/d;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v3, v5}, Lcom/sunrise/d/d;->a(I)V

    iget-object v4, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    invoke-virtual {p0, p1, p2}, Lcom/sunrise/d/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;

    move v2, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/sunrise/d/c;->g:Lcom/sunrise/d/c;

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v0

    if-ne v0, v7, :cond_3

    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    throw v0

    :cond_3
    :try_start_1
    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/sunrise/d/a;->a(Ljava/util/Collection;)V

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v0

    if-ne v0, v7, :cond_5

    const/4 v0, 0x4

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(I)V

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :pswitch_1
    invoke-interface {v3}, Lcom/sunrise/d/d;->j()Ljava/lang/Number;

    move-result-object v0

    const/16 v5, 0x10

    invoke-interface {v3, v5}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/sunrise/d/c;->h:Lcom/sunrise/d/c;

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(Z)Ljava/lang/Number;

    move-result-object v0

    :goto_3
    const/16 v5, 0x10

    invoke-interface {v3, v5}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(Z)Ljava/lang/Number;

    move-result-object v0

    goto :goto_3

    :pswitch_3
    invoke-interface {v3}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x10

    invoke-interface {v3, v5}, Lcom/sunrise/d/d;->a(I)V

    sget-object v5, Lcom/sunrise/d/c;->f:Lcom/sunrise/d/c;

    invoke-interface {v3, v5}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Lcom/sunrise/d/g;

    invoke-direct {v5, v0}, Lcom/sunrise/d/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sunrise/d/g;->I()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lcom/sunrise/d/g;->D()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_7
    invoke-virtual {v5}, Lcom/sunrise/d/g;->close()V

    goto :goto_2

    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v5, 0x10

    invoke-interface {v3, v5}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_2

    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v5, 0x10

    invoke-interface {v3, v5}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_2

    :pswitch_6
    new-instance v0, Lcom/sunrise/a/e;

    sget-object v5, Lcom/sunrise/d/c;->o:Lcom/sunrise/d/c;

    invoke-interface {v3, v5}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v5

    invoke-direct {v0, v5}, Lcom/sunrise/a/e;-><init>(Z)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/sunrise/d/a;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_7
    new-instance v0, Lcom/sunrise/a/b;

    invoke-direct {v0}, Lcom/sunrise/a/b;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/sunrise/d/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    sget-object v5, Lcom/sunrise/d/c;->q:Lcom/sunrise/d/c;

    invoke-interface {v3, v5}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_8
    const/4 v0, 0x4

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(I)V

    move-object v0, v1

    goto/16 :goto_2

    :pswitch_9
    const/4 v0, 0x4

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(I)V

    move-object v0, v1

    goto/16 :goto_2

    :pswitch_a
    const/16 v0, 0x10

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    return-void

    :pswitch_b
    :try_start_2
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "unclosed jsonArray"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/16 v4, 0x12

    const/16 v3, 0xa

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/sunrise/d/d;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-interface {v1}, Lcom/sunrise/d/d;->d()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/sunrise/d/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :pswitch_2
    invoke-interface {v1}, Lcom/sunrise/d/d;->d()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/sunrise/d/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/sunrise/a/b;

    invoke-direct {v0}, Lcom/sunrise/a/b;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/sunrise/d/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    sget-object v2, Lcom/sunrise/d/c;->q:Lcom/sunrise/d/c;

    invoke-interface {v1, v2}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sunrise/a/b;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/sunrise/a/e;

    sget-object v2, Lcom/sunrise/d/c;->o:Lcom/sunrise/d/c;

    invoke-interface {v1, v2}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/e;-><init>(Z)V

    invoke-virtual {p0, v0, p1}, Lcom/sunrise/d/a;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-interface {v1}, Lcom/sunrise/d/d;->j()Ljava/lang/Number;

    move-result-object v0

    invoke-interface {v1}, Lcom/sunrise/d/d;->d()V

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/sunrise/d/c;->h:Lcom/sunrise/d/c;

    invoke-interface {v1, v0}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/sunrise/d/d;->a(Z)Ljava/lang/Number;

    move-result-object v0

    invoke-interface {v1}, Lcom/sunrise/d/d;->d()V

    goto :goto_0

    :pswitch_7
    invoke-interface {v1}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/sunrise/d/d;->a(I)V

    sget-object v2, Lcom/sunrise/d/c;->f:Lcom/sunrise/d/c;

    invoke-interface {v1, v2}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sunrise/d/g;

    invoke-direct {v1, v0}, Lcom/sunrise/d/g;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/sunrise/d/g;->I()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sunrise/d/g;->D()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Lcom/sunrise/d/g;->close()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sunrise/d/g;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/sunrise/d/g;->close()V

    throw v0

    :pswitch_8
    invoke-interface {v1}, Lcom/sunrise/d/d;->d()V

    goto :goto_0

    :pswitch_9
    invoke-interface {v1}, Lcom/sunrise/d/d;->d()V

    goto :goto_0

    :pswitch_a
    invoke-interface {v1}, Lcom/sunrise/d/d;->d()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :pswitch_b
    invoke-interface {v1}, Lcom/sunrise/d/d;->d()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :pswitch_c
    invoke-interface {v1, v4}, Lcom/sunrise/d/d;->a(I)V

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v0

    if-eq v0, v4, :cond_2

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v1, v3}, Lcom/sunrise/d/d;->a(I)V

    invoke-virtual {p0, v3}, Lcom/sunrise/d/a;->b(I)V

    invoke-interface {v1}, Lcom/sunrise/d/d;->j()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sunrise/d/a;->b(I)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sunrise/d/a;->b(I)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    :pswitch_d
    invoke-interface {v1}, Lcom/sunrise/d/d;->p()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unterminated json string, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/sunrise/d/d;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_1
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sunrise/d/a;->l:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sunrise/d/a;->k:[Lcom/sunrise/d/i;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sunrise/d/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sunrise/d/a;->k:[Lcom/sunrise/d/i;

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()Ljava/text/DateFormat;
    .locals 3

    iget-object v0, p0, Lcom/sunrise/d/a;->j:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/sunrise/d/a;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->w()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sunrise/d/a;->j:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/sunrise/d/a;->j:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->v()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    iget-object v0, p0, Lcom/sunrise/d/a;->j:Ljava/text/DateFormat;

    return-object v0
.end method

.method public final b(I)V
    .locals 4

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Lcom/sunrise/d/d;->d()V

    return-void

    :cond_0
    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/sunrise/d/h;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v0

    invoke-static {v0}, Lcom/sunrise/d/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sunrise/d/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/sunrise/d/a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sunrise/e/u;

    invoke-direct {v0, p1, p2}, Lcom/sunrise/e/u;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sunrise/d/a;->h()Lcom/sunrise/d/b;

    move-result-object v1

    iput-object v0, v1, Lcom/sunrise/d/b;->c:Lcom/sunrise/e/l;

    iget-object v0, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    iput-object v0, v1, Lcom/sunrise/d/b;->d:Lcom/sunrise/d/i;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sunrise/d/a;->a(I)V

    :cond_0
    return-void
.end method

.method public c()Lcom/sunrise/d/k;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/a;->b:Lcom/sunrise/d/k;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/sunrise/d/a;->m:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sunrise/d/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_0

    iget-object v0, p0, Lcom/sunrise/d/a;->m:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/d/b;

    iget-object v2, v0, Lcom/sunrise/d/b;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v5, v0, Lcom/sunrise/d/b;->d:Lcom/sunrise/d/i;

    if-eqz v5, :cond_2

    iget-object v1, v0, Lcom/sunrise/d/b;->d:Lcom/sunrise/d/i;

    iget-object v1, v1, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :cond_2
    const-string v5, "$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v2}, Lcom/sunrise/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    iget-object v0, v0, Lcom/sunrise/d/b;->c:Lcom/sunrise/e/l;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1, v2}, Lcom/sunrise/e/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lcom/sunrise/d/b;->a:Lcom/sunrise/d/i;

    iget-object v2, v2, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    goto :goto_1
.end method

.method public close()V
    .locals 4

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    :try_start_0
    sget-object v0, Lcom/sunrise/d/c;->a:Lcom/sunrise/d/c;

    invoke-interface {v1, v0}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not close json text, token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v3

    invoke-static {v3}, Lcom/sunrise/d/h;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/sunrise/d/d;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Lcom/sunrise/d/d;->close()V

    return-void
.end method

.method public d()Lcom/sunrise/d/j;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/a;->c:Lcom/sunrise/d/j;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/sunrise/d/a;->f:I

    return v0
.end method

.method public f()Lcom/sunrise/a/e;
    .locals 3

    new-instance v0, Lcom/sunrise/a/e;

    iget-object v1, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    sget-object v2, Lcom/sunrise/d/c;->o:Lcom/sunrise/d/c;

    invoke-interface {v1, v2}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/e;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/sunrise/d/a;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/a/e;

    return-object v0
.end method

.method public g()Lcom/sunrise/d/i;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    return-object v0
.end method

.method public h()Lcom/sunrise/d/b;
    .locals 2

    iget-object v0, p0, Lcom/sunrise/d/a;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/sunrise/d/a;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/d/b;

    return-object v0
.end method

.method public i()Lcom/sunrise/e/m;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/a;->g:Lcom/sunrise/e/m;

    return-object v0
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    sget-object v1, Lcom/sunrise/d/c;->l:Lcom/sunrise/d/c;

    invoke-interface {v0, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    iget-object v0, v0, Lcom/sunrise/d/i;->b:Lcom/sunrise/d/i;

    iput-object v0, p0, Lcom/sunrise/d/a;->e:Lcom/sunrise/d/i;

    iget-object v0, p0, Lcom/sunrise/d/a;->k:[Lcom/sunrise/d/i;

    iget v1, p0, Lcom/sunrise/d/a;->l:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget v0, p0, Lcom/sunrise/d/a;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sunrise/d/a;->l:I

    goto :goto_0
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sunrise/d/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/sunrise/d/d;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    return-object v0
.end method
