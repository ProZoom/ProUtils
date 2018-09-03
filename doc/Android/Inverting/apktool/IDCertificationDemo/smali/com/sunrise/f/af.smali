.class public Lcom/sunrise/f/af;
.super Lcom/sunrise/f/ay;


# instance fields
.field protected final a:Lcom/sunrise/f/aw;

.field public final b:Lcom/sunrise/f/az;

.field protected c:Ljava/util/IdentityHashMap;

.field protected d:Lcom/sunrise/f/au;

.field protected e:Ljava/util/TimeZone;

.field protected f:Ljava/util/Locale;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/sunrise/f/az;

    invoke-direct {v0}, Lcom/sunrise/f/az;-><init>()V

    invoke-static {}, Lcom/sunrise/f/aw;->a()Lcom/sunrise/f/aw;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sunrise/f/af;-><init>(Lcom/sunrise/f/az;Lcom/sunrise/f/aw;)V

    return-void
.end method

.method public constructor <init>(Lcom/sunrise/f/az;)V
    .locals 1

    invoke-static {}, Lcom/sunrise/f/aw;->a()Lcom/sunrise/f/aw;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sunrise/f/af;-><init>(Lcom/sunrise/f/az;Lcom/sunrise/f/aw;)V

    return-void
.end method

.method public constructor <init>(Lcom/sunrise/f/az;Lcom/sunrise/f/aw;)V
    .locals 1

    invoke-direct {p0}, Lcom/sunrise/f/ay;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunrise/f/af;->p:I

    const-string v0, "\t"

    iput-object v0, p0, Lcom/sunrise/f/af;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/f/af;->c:Ljava/util/IdentityHashMap;

    sget-object v0, Lcom/sunrise/a/a;->a:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/sunrise/f/af;->e:Ljava/util/TimeZone;

    sget-object v0, Lcom/sunrise/a/a;->b:Ljava/util/Locale;

    iput-object v0, p0, Lcom/sunrise/f/af;->f:Ljava/util/Locale;

    iput-object p1, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    iput-object p2, p0, Lcom/sunrise/f/af;->a:Lcom/sunrise/f/aw;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/sunrise/f/ap;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/af;->a:Lcom/sunrise/f/aw;

    invoke-virtual {v0, p1}, Lcom/sunrise/f/aw;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/af;->s:Ljava/text/DateFormat;

    instance-of v0, v0, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/f/af;->s:Ljava/text/DateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/af;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sunrise/f/af;->a(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public a(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 6

    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    iget-boolean v0, v0, Lcom/sunrise/f/az;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sunrise/f/au;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sunrise/f/au;-><init>(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    iget-object v0, p0, Lcom/sunrise/f/af;->c:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/af;->c:Ljava/util/IdentityHashMap;

    :cond_1
    iget-object v0, p0, Lcom/sunrise/f/af;->c:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    invoke-virtual {v0, p2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/sunrise/f/ba;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    invoke-virtual {v0, p1, p2}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;Z)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sunrise/f/af;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 6

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    invoke-virtual {v0}, Lcom/sunrise/f/az;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunrise/f/af;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sunrise/f/af;->b()Ljava/text/DateFormat;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/sunrise/f/af;->f:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/sunrise/f/af;->e:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sunrise/f/af;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sunrise/f/af;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/sunrise/f/af;->s:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunrise/f/af;->s:Ljava/text/DateFormat;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/af;->c:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/f/af;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    sget-object v1, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    sget-object v1, Lcom/sunrise/f/ba;->t:Lcom/sunrise/f/ba;

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    iget-object v0, v0, Lcom/sunrise/f/au;->a:Lcom/sunrise/f/au;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/text/DateFormat;
    .locals 3

    iget-object v0, p0, Lcom/sunrise/f/af;->s:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/f/af;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/sunrise/f/af;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/sunrise/f/af;->f:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sunrise/f/af;->s:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/sunrise/f/af;->s:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/sunrise/f/af;->e:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/af;->s:Ljava/text/DateFormat;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    iget-object v1, v0, Lcom/sunrise/f/au;->b:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    const-string v1, "{\"$ref\":\"@\"}"

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/sunrise/f/au;->a:Lcom/sunrise/f/au;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/sunrise/f/au;->b:Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    const-string v1, "{\"$ref\":\"..\"}"

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/sunrise/f/au;->a:Lcom/sunrise/f/au;

    :cond_2
    iget-object v1, v0, Lcom/sunrise/f/au;->a:Lcom/sunrise/f/au;

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/sunrise/f/au;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    const-string v1, "{\"$ref\":\"$\"}"

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    const-string v1, "{\"$ref\":\""

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    iget-object v0, p0, Lcom/sunrise/f/af;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/au;

    invoke-virtual {v0}, Lcom/sunrise/f/au;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sunrise/f/bb;->a:Lcom/sunrise/f/bb;

    invoke-virtual {v0, p0, p1}, Lcom/sunrise/f/bb;->a(Lcom/sunrise/f/af;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget v0, p0, Lcom/sunrise/f/af;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sunrise/f/af;->p:I

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    invoke-virtual {v0}, Lcom/sunrise/f/az;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunrise/f/af;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()V
    .locals 1

    iget v0, p0, Lcom/sunrise/f/af;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sunrise/f/af;->p:I

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sunrise/f/af;->p:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    iget-object v2, p0, Lcom/sunrise/f/af;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()Lcom/sunrise/f/az;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    invoke-virtual {v0}, Lcom/sunrise/f/az;->b()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    invoke-virtual {v0}, Lcom/sunrise/f/az;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
