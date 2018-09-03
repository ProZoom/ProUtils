.class public Lcom/sunrise/e/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;


# static fields
.field public static a:Lcom/sunrise/e/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/e/q;

    invoke-direct {v0}, Lcom/sunrise/e/q;-><init>()V

    sput-object v0, Lcom/sunrise/e/q;->a:Lcom/sunrise/e/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/sunrise/d/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    const/16 v10, 0xd

    const/16 v9, 0x10

    const/4 v8, 0x4

    iget-object v2, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v1

    if-eq v1, v9, :cond_0

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect {, actual "

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

    :cond_0
    invoke-virtual {p0}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v4

    invoke-interface {v3}, Lcom/sunrise/e/s;->a_()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/sunrise/d/d;->a(I)V

    invoke-virtual {p0}, Lcom/sunrise/d/a;->g()Lcom/sunrise/d/i;

    move-result-object v1

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v5

    if-ne v5, v10, :cond_2

    const/16 v0, 0x10

    invoke-interface {v2, v0}, Lcom/sunrise/d/d;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    :goto_1
    return-object p1

    :cond_2
    :try_start_1
    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v5

    if-ne v5, v8, :cond_8

    invoke-interface {v2}, Lcom/sunrise/d/d;->r()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/sunrise/d/c;->p:Lcom/sunrise/d/c;

    invoke-interface {v2, v5}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/sunrise/d/d;->b(I)V

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v3

    if-ne v3, v8, :cond_6

    invoke-interface {v2}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, v1, Lcom/sunrise/d/i;->b:Lcom/sunrise/d/i;

    iget-object v0, v0, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    :goto_2
    const/16 v3, 0xd

    invoke-interface {v2, v3}, Lcom/sunrise/d/d;->a(I)V

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v3

    if-eq v3, v10, :cond_7

    new-instance v0, Lcom/sunrise/a/d;

    const-string v2, "illegal ref"

    invoke-direct {v0, v2}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    throw v0

    :cond_3
    :try_start_2
    const-string v4, "$"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v0, v1

    :goto_3
    iget-object v3, v0, Lcom/sunrise/d/i;->b:Lcom/sunrise/d/i;

    if-eqz v3, :cond_4

    iget-object v0, v0, Lcom/sunrise/d/i;->b:Lcom/sunrise/d/i;

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lcom/sunrise/d/i;->a:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance v4, Lcom/sunrise/d/b;

    invoke-direct {v4, v1, v3}, Lcom/sunrise/d/b;-><init>(Lcom/sunrise/d/i;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/b;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sunrise/d/a;->a(I)V

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal ref, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v2

    invoke-static {v2}, Lcom/sunrise/d/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lcom/sunrise/d/d;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    move-object p1, v0

    goto/16 :goto_1

    :cond_8
    :try_start_3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_a

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v5

    if-ne v5, v8, :cond_a

    sget-object v5, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    invoke-interface {v2}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lcom/sunrise/d/c;->p:Lcom/sunrise/d/c;

    invoke-interface {v2, v5}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x4

    invoke-interface {v2, v5}, Lcom/sunrise/d/d;->b(I)V

    const/16 v5, 0x10

    invoke-interface {v2, v5}, Lcom/sunrise/d/d;->a(I)V

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v5

    if-ne v5, v10, :cond_9

    invoke-interface {v2}, Lcom/sunrise/d/d;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v1}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_1

    :cond_9
    :try_start_4
    invoke-interface {v3}, Lcom/sunrise/e/s;->a_()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/sunrise/d/d;->a(I)V

    :cond_a
    const/4 v5, 0x0

    invoke-interface {v3, p0, p2, v5}, Lcom/sunrise/e/s;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v6

    const/16 v7, 0x11

    if-eq v6, v7, :cond_b

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, expect :, actual "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-interface {v4}, Lcom/sunrise/e/s;->a_()I

    move-result v6

    invoke-interface {v2, v6}, Lcom/sunrise/d/d;->a(I)V

    invoke-interface {v4, p0, p3, v5}, Lcom/sunrise/e/s;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p1, v5}, Lcom/sunrise/d/a;->b(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lcom/sunrise/d/d;->a()I

    move-result v5

    if-ne v5, v9, :cond_1

    invoke-interface {v3}, Lcom/sunrise/e/s;->a_()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/sunrise/d/d;->a(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static a(Lcom/sunrise/d/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .locals 10

    const/16 v9, 0x27

    const/16 v8, 0xd

    const/16 v7, 0x3a

    const/16 v6, 0x22

    iget-object v3, p0, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect {, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/sunrise/d/a;->g()Lcom/sunrise/d/i;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    invoke-interface {v3}, Lcom/sunrise/d/d;->c()V

    invoke-interface {v3}, Lcom/sunrise/d/d;->e()C

    move-result v0

    sget-object v1, Lcom/sunrise/d/c;->g:Lcom/sunrise/d/c;

    invoke-interface {v3, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    invoke-interface {v3}, Lcom/sunrise/d/d;->f()C

    invoke-interface {v3}, Lcom/sunrise/d/d;->c()V

    invoke-interface {v3}, Lcom/sunrise/d/d;->e()C

    move-result v0

    goto :goto_1

    :cond_1
    if-ne v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/sunrise/d/a;->c()Lcom/sunrise/d/k;

    move-result-object v0

    const/16 v1, 0x22

    invoke-interface {v3, v0, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/k;C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lcom/sunrise/d/d;->c()V

    invoke-interface {v3}, Lcom/sunrise/d/d;->e()C

    move-result v1

    if-eq v1, v7, :cond_7

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \':\' at "

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    throw v0

    :cond_2
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_3

    :try_start_1
    invoke-interface {v3}, Lcom/sunrise/d/d;->f()C

    invoke-interface {v3}, Lcom/sunrise/d/d;->g()V

    const/16 v0, 0x10

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    :goto_2
    return-object p1

    :cond_3
    if-ne v0, v9, :cond_5

    :try_start_2
    sget-object v0, Lcom/sunrise/d/c;->d:Lcom/sunrise/d/c;

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/sunrise/d/a;->c()Lcom/sunrise/d/k;

    move-result-object v0

    const/16 v1, 0x27

    invoke-interface {v3, v0, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/k;C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lcom/sunrise/d/d;->c()V

    invoke-interface {v3}, Lcom/sunrise/d/d;->e()C

    move-result v1

    if-eq v1, v7, :cond_7

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \':\' at "

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

    :cond_5
    sget-object v0, Lcom/sunrise/d/c;->c:Lcom/sunrise/d/c;

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p0}, Lcom/sunrise/d/a;->c()Lcom/sunrise/d/k;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->b(Lcom/sunrise/d/k;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lcom/sunrise/d/d;->c()V

    invoke-interface {v3}, Lcom/sunrise/d/d;->e()C

    move-result v1

    if-eq v1, v7, :cond_7

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expect \':\' at "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Lcom/sunrise/d/d;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

    invoke-interface {v3}, Lcom/sunrise/d/d;->f()C

    invoke-interface {v3}, Lcom/sunrise/d/d;->c()V

    invoke-interface {v3}, Lcom/sunrise/d/d;->e()C

    invoke-interface {v3}, Lcom/sunrise/d/d;->g()V

    sget-object v0, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    if-ne v1, v0, :cond_a

    sget-object v0, Lcom/sunrise/d/c;->p:Lcom/sunrise/d/c;

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/c;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/sunrise/d/a;->c()Lcom/sunrise/d/k;

    move-result-object v0

    const/16 v1, 0x22

    invoke-interface {v3, v0, v1}, Lcom/sunrise/d/d;->a(Lcom/sunrise/d/k;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunrise/d/j;->c()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunrise/h/k;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x10

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(I)V

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v0

    if-ne v0, v8, :cond_f

    const/16 v0, 0x10

    invoke-interface {v3, v0}, Lcom/sunrise/d/d;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_2

    :cond_8
    :try_start_3
    invoke-virtual {p0}, Lcom/sunrise/d/a;->d()Lcom/sunrise/d/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sunrise/d/j;->a(Ljava/lang/reflect/Type;)Lcom/sunrise/e/s;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v3, v2}, Lcom/sunrise/d/d;->a(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/sunrise/d/a;->a(I)V

    if-eqz v4, :cond_9

    instance-of v2, p3, Ljava/lang/Integer;

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/sunrise/d/a;->j()V

    :cond_9
    invoke-interface {v1, p0, v0, p3}, Lcom/sunrise/e/s;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    move-object p1, v0

    goto/16 :goto_2

    :cond_a
    :try_start_4
    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    if-eqz v2, :cond_b

    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    :cond_b
    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_d

    const/4 v0, 0x0

    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    :goto_3
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/sunrise/d/a;->b(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;

    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_c

    const/16 v1, 0xf

    if-ne v0, v1, :cond_e

    :cond_c
    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_2

    :cond_d
    :try_start_5
    invoke-virtual {p0, p2, v1}, Lcom/sunrise/d/a;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_e
    if-ne v0, v8, :cond_f

    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0, v4}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto/16 :goto_2

    :cond_f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-class v0, Lcom/sunrise/a/e;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/sunrise/d/a;->i()Lcom/sunrise/e/m;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sunrise/d/a;->f()Lcom/sunrise/a/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/sunrise/d/d;->a(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sunrise/e/q;->a(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sunrise/d/a;->g()Lcom/sunrise/d/i;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1, v1, v0, p3}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sunrise/d/i;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sunrise/e/q;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, Lcom/sunrise/d/a;->a(Lcom/sunrise/d/i;)V

    throw v0
.end method

.method protected a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-class v2, Ljava/lang/String;

    if-ne v2, v0, :cond_0

    invoke-static {p1, p4, v1, p3}, Lcom/sunrise/e/q;->a(Lcom/sunrise/d/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p4, v0, v1, p3}, Lcom/sunrise/e/q;->a(Lcom/sunrise/d/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p4, p3}, Lcom/sunrise/d/a;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 4

    const-class v0, Ljava/util/Properties;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/Hashtable;

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    goto :goto_0

    :cond_1
    const-class v0, Ljava/util/IdentityHashMap;

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    goto :goto_0

    :cond_2
    const-class v0, Ljava/util/SortedMap;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/util/TreeMap;

    if-ne p1, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    :cond_4
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    if-eq p1, v0, :cond_5

    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne p1, v0, :cond_6

    :cond_5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_0

    :cond_6
    const-class v0, Ljava/util/Map;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/util/HashMap;

    if-ne p1, v0, :cond_8

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_8
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_9

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sunrise/e/q;->a(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupport type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sunrise/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupport type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a_()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method
