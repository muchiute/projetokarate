package examples;
import com.intuit.karate.junit5.Karate;

public class KarateTest {
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }

    // Exemplo de método para gerar cenário BDD dinamicamente
    public void gerarCenarioBDD() {
        String feature = "Feature: Teste Automatizado\n" +
                "  Scenario: Exemplo de cenário gerado automaticamente\n" +
                "    Given que o sistema está inicializado\n" +
                "    When o usuário realiza uma ação\n" +
                "    Then o sistema responde corretamente";

        // Você pode manipular 'feature' como quiser, pode gerar dinamicamente usando loops, condições, etc.
        System.out.println(feature);
    }
}
