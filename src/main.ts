import "./styles/tailwind.css";
import "./styles/main.css";
import Alpine from "alpinejs";

window.Alpine = Alpine;

Alpine.start();

export function count(x: number, y: number) {
  return x + y;
}
