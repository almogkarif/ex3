
#ifndef QUEUE_H
#define QUEUE_H
#include <iostream>



template <class T>
class Queue
{
private:
    class Node
    {
        public:
        T m_data;
        Node *next;
        explicit Node(T data):m_data(data),next(nullptr){}
        T& operator*()
        {
            return m_data;
        }
    };

    Node *m_start;
    Node *m_end;
    int m_size=0;

    bool empty()
    {
        return m_start == nullptr;
    }

public:

    class Iterator
    {
        private:
        Node *m_element;
        Iterator(Node *node); //c'tor
    
        public:
        friend class Queue<T>;
        Iterator operator++();
        bool operator!=(Iterator other);
        T& operator*();
        class InvalidOperation{};

    };
    class ConstIterator
    {
        private:
        Node *m_element;
        ConstIterator(Node *node); //c'tor
    
        public:
        friend class Queue<T>;
        ConstIterator operator++();
        bool operator!=(ConstIterator other);
        const T& operator*() const;
        class InvalidOperation{};

    };

class EmptyQueue {};
Queue():m_start(nullptr),m_end(nullptr),m_size(0){};
~Queue();
Queue(const Queue<T> &copy_from);
// Queue<T> &operator=(const Queue<T> &copy_from);
Iterator begin();
ConstIterator begin() const;
Iterator end();
ConstIterator end() const;
void pushBack(const T& data);
T& front();
void popFront();
int size();
template<class condition>
Queue<T> filter(Queue<T> oldQueue,condition cond);
template<class operation>
void transform(Queue<T> oldQueue,operation func);

};

// Queue functions
template<class T>
Queue<T>::~Queue()
{
    while(m_size>0)
    {
        this->popFront();
    }
}

template<class T>
Queue<T>::Queue(const Queue<T> &copy_from)
{
    m_start = nullptr;
    for(typename Queue<T>::ConstIterator iter = copy_from.begin(); iter != copy_from.end(); ++iter)
    {
        pushBack(*(iter));
    }

}

// template<class T>
// Queue<T>& Queue<T>::operator=(const Queue<T> &copy_from)
// {
//     if(&copy_from==this)
//     {
//         return *this;
//     }

// }

template<class T>
typename Queue<T>::Iterator Queue<T>::begin()
{
    return Iterator(m_start);
}

template<class T>
typename Queue<T>::ConstIterator Queue<T>::begin() const
{
    return ConstIterator(m_start);
}

template<class T>
typename Queue<T>::Iterator Queue<T>::end()
{
    if(m_end)
    {
        return Iterator(m_end->next);
    }
    else
    {
        return nullptr;
    }
}

template<class T>
typename Queue<T>::ConstIterator Queue<T>::end() const
{
    if(m_end)
    {
        return ConstIterator(m_end->next);
    }
    else
    {
        return nullptr;
    }}


template<class T>
void Queue<T>::pushBack(const T& data)
{
    Node *temp = new Node(data);
    if(!temp)
    {
        throw std::bad_alloc();
    }
    if(empty())
    {
        m_start = temp;
        m_end = temp;
    }
    else
    {
        m_end->next = temp;
        m_end = m_end->next;
    }
        m_size++;
}

template<class T>
T& Queue<T>::front()
{
    if(empty())
    {
        throw EmptyQueue();
    }
    else
    {
        return m_start->m_data;
    }
}

template<class T>
void Queue<T>::popFront()
{
    if(empty())
    {
        throw EmptyQueue();
    }
    else if(m_start == m_end)
    {
        delete m_start;
        m_start = nullptr;
        m_end = nullptr;
    }
    else
    {
        Node *temp = m_start;
        m_start = m_start->next;
        delete temp;
    }
    m_size--;
}

template<class T>
int Queue<T>::size()
{
    return m_size;
}


template<class condition,class T>
Queue<T> filter(Queue<T> &oldQueue, condition cond)
{
    Queue<T> newQueue;
    // for(typename Queue<T>::Iterator iter: *oldQueue)
    for(typename Queue<T>::Iterator iter = oldQueue.begin(); iter != oldQueue.end(); ++iter)
    {
        if(cond(*iter))
        {
            newQueue.pushBack(*iter);
        }
    }
    return newQueue;
}
template<class operation,class T>
void transform(Queue<T> &oldQueue,operation func)
{
    // for(typename Queue<T>::Iterator iter: *oldQueue)
    for(typename Queue<T>::Iterator iter = oldQueue.begin(); iter != oldQueue.end(); ++iter)
    {
        func(*iter);
    }
}



//iterators operators

template<class T>
typename Queue<T>::Iterator Queue<T>::Iterator::operator++()
{
    if(m_element == nullptr)
    {
        throw Queue<T>::Iterator::InvalidOperation();
    }
    m_element = m_element->next;
    return *this;
}

template<class T>
typename Queue<T>::ConstIterator Queue<T>::ConstIterator::operator++()
{
    if(m_element == nullptr)
    {
        throw Queue<T>::ConstIterator::InvalidOperation();
    }
    m_element = m_element->next;
    return *this;
}

template<class T>
T& Queue<T>::Iterator::operator*()
{
    return **m_element;
}

template<class T>
const T& Queue<T>::ConstIterator::operator*() const
{
    return **m_element;
}

template<class T>
bool Queue<T>::Iterator::operator!=(Queue<T>::Iterator other)
{
    return m_element != other.m_element;
}

template<class T>
bool Queue<T>::ConstIterator::operator!=(Queue<T>::ConstIterator other)
{
    return m_element != other.m_element;
}

//iterators c'tor

template<class T>
Queue<T>::Iterator::Iterator(Queue<T>::Node *node)
{
    m_element = node;
}

template<class T>
Queue<T>::ConstIterator::ConstIterator(Queue<T>::Node *node)
{
    m_element = node;
}


#endif