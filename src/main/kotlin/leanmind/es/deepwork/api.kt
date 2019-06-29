package leanmind.es.deepwork

import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController


@RequestMapping("/api")
@RestController
class Controller {
    @RequestMapping("/ping")
    fun ping(): String {
        return "Pong!"
    }
}

