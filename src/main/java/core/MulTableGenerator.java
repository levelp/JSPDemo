package core;

/**
 * Генератор таблицы умножения
 */
public class MulTableGenerator {

    public static String[][] table(int Size) {
        String[][] res = new String[Size][Size];
        for (int i = 0; i < Size; i++) {
            for (int j = 0; j < Size; j++) {
                res[i][j] = Integer.toString(
                        (i + 1) * (j + 1));
            }
        }
        return res;
    }
}
