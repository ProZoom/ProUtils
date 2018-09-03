.class public abstract Lcom/sunrise/e/c;
.super Lcom/sunrise/e/f;

# interfaces
.implements Lcom/sunrise/e/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunrise/e/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sunrise/e/c;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 8

    const/16 v7, 0xd

    const/4 v1, 0x0

    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x2

    iget-object v2, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-interface {v2}, Lcom/sunrise/d/d;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v6}, Lcom/sunrise/d/d;->a(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sunrise/e/c;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v0

    if-ne v0, v5, :cond_4

    invoke-interface {v2}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_2

    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_2
    :goto_1
    if-nez v1, :cond_e

    invoke-interface {v2, v6}, Lcom/sunrise/d/d;->a(I)V

    sget-object v1, Lcom/sunrise/d/c;->f:Lcom/sunrise/d/c;

    invoke-interface {v2, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sunrise/d/g;

    invoke-direct {v1, v0}, Lcom/sunrise/d/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sunrise/d/g;->I()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/sunrise/d/g;->D()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_3
    invoke-virtual {v1}, Lcom/sunrise/d/g;->close()V

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_5

    invoke-interface {v2}, Lcom/sunrise/d/d;->d()V

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    invoke-interface {v2}, Lcom/sunrise/d/d;->d()V

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v0

    if-ne v0, v5, :cond_8

    invoke-interface {v2}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Lcom/sunrise/d/d;->d()V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/sunrise/d/a;->b(I)V

    invoke-interface {v2}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunrise/d/j;->c()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunrise/h/k;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object p2, v0

    :cond_6
    invoke-virtual {p1, v5}, Lcom/sunrise/d/a;->b(I)V

    invoke-virtual {p1, v6}, Lcom/sunrise/d/a;->b(I)V

    :cond_7
    invoke-interface {v2, v4}, Lcom/sunrise/d/d;->b(I)V

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v0

    if-ne v0, v4, :cond_9

    invoke-interface {v2}, Lcom/sunrise/d/d;->q()J

    move-result-wide v0

    invoke-interface {v2}, Lcom/sunrise/d/d;->d()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v7}, Lcom/sunrise/d/a;->b(I)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lcom/sunrise/d/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Lcom/sunrise/d/a;->e()I

    move-result v0

    if-ne v0, v4, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sunrise/d/a;->a(I)V

    invoke-virtual {p1, v6}, Lcom/sunrise/d/a;->b(I)V

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v0

    if-ne v0, v5, :cond_c

    const-string v0, "val"

    invoke-interface {v2}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-interface {v2}, Lcom/sunrise/d/d;->d()V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/sunrise/d/a;->b(I)V

    invoke-virtual {p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v7}, Lcom/sunrise/d/a;->b(I)V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p1}, Lcom/sunrise/d/a;->k()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_1

    :cond_e
    move-object v0, v1

    goto/16 :goto_0
.end method
