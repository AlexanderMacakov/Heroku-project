package сom.matzakov.sweater.repos;

import org.springframework.data.repository.CrudRepository;
import сom.matzakov.sweater.domain.Message;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Long> {

    List<Message> findByTag(String tag);

}
